import 'dart:io';

import 'package:feature_generator/src/api_parser.dart';
import 'package:feature_generator/src/feature_generator.dart';
import 'package:feature_generator/src/file_discovery.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  final scriptDir = path.dirname(Platform.script.toFilePath());
  final projectRoot = path.normalize(path.join(scriptDir, '..', '..'));
  final apiDir = path.join(projectRoot, 'openapi', 'lib', 'src', 'api');
  final featuresDir = path.join(projectRoot, 'lib', 'features');

  print('🚀 OpenAPI Feature Generator');
  print('============================\n');

  // Discover API files
  final apiFiles = discoverApiFiles(apiDir);
  print('Found ${apiFiles.length} API file(s):');
  for (final file in apiFiles) {
    print('  - ${path.basename(file)}');
  }
  print('');

  // Process each API file
  for (final apiFile in apiFiles) {
    try {
      final apiContent = await File(apiFile).readAsString();
      final apiInfo = parseApiFile(apiContent, apiFile);
      await generateFeature(apiInfo, featuresDir);
      print('✅ Generated feature: ${apiInfo.featureName}\n');
    } catch (e, stackTrace) {
      print('❌ Error processing ${path.basename(apiFile)}: $e');
      print('$stackTrace\n');
    }
  }

  print('✨ Generation complete!');
}
