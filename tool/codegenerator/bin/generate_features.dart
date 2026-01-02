import 'dart:io';

import 'package:args/args.dart';
import 'package:feature_generator/src/api_parser.dart';
import 'package:feature_generator/src/config.dart';
import 'package:feature_generator/src/feature_filter.dart';
import 'package:feature_generator/src/feature_generator.dart';
import 'package:feature_generator/src/file_discovery.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      'config',
      abbr: 'c',
      help: 'Path to configuration YAML file',
      defaultsTo: null,
    );

  final results = parser.parse(args);
  final configPath = results['config'] as String?;

  final scriptDir = path.dirname(Platform.script.toFilePath());
  final projectRoot = path.normalize(path.join(scriptDir, '..', '..', '..'));

  // Default config path if not provided
  final defaultConfigPath = path.join(scriptDir, 'config.yaml');
  final finalConfigPath = configPath ?? defaultConfigPath;

  // Load config
  final config = Config.loadFromFile(finalConfigPath);
  if (config == null) {
    print('Warning: Could not load config file, using defaults.\n');
  }
  final effectiveConfig = config ?? Config.defaultConfig();

  final apiDir = path.join(projectRoot, 'openapi', 'lib', 'src', 'api');
  final featuresDir = path.join(projectRoot, 'lib', 'features');

  print('🚀 OpenAPI Feature Generator');
  print('============================\n');
  print('Config file: $finalConfigPath');
  print('File mode: ${effectiveConfig.fileMode}\n');

  // Discover API files
  final apiFiles = discoverApiFiles(apiDir);
  print('Found ${apiFiles.length} API file(s):');
  for (final file in apiFiles) {
    print('  - ${path.basename(file)}');
  }
  print('');

  // Apply feature filtering
  final featureFilter = FeatureFilter(effectiveConfig.features);
  final filteredApiFiles = <String>[];
  final apiInfoMap = <String, dynamic>{};

  for (final apiFile in apiFiles) {
    try {
      final apiContent = await File(apiFile).readAsString();
      final apiInfo = parseApiFile(apiContent, apiFile);

      if (featureFilter.shouldGenerate(apiInfo.featureName)) {
        filteredApiFiles.add(apiFile);
        apiInfoMap[apiFile] = apiInfo;
      } else {
        print('⏭️  Skipped feature: ${apiInfo.featureName} (filtered out)\n');
      }
    } catch (e) {
      print('⚠️  Warning: Could not parse ${path.basename(apiFile)}: $e\n');
    }
  }

  if (filteredApiFiles.isEmpty) {
    print('No features to generate after filtering.');
    return;
  }

  print('Generating ${filteredApiFiles.length} feature(s):\n');

  // Process each filtered API file
  for (final apiFile in filteredApiFiles) {
    try {
      final apiInfo = apiInfoMap[apiFile] as dynamic;
      await generateFeature(apiInfo, featuresDir, effectiveConfig);
      print('✅ Generated feature: ${apiInfo.featureName}\n');
    } catch (e, stackTrace) {
      print('❌ Error processing ${path.basename(apiFile)}: $e');
      print('$stackTrace\n');
    }
  }

  print('✨ Generation complete!');
}
