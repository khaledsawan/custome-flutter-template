import 'dart:io';

import 'package:feature_generator/src/generators/presentation_stub_generator.dart';
import 'package:feature_generator/src/generators/remote_data_source_generator.dart';
import 'package:feature_generator/src/generators/repository_implementation_generator.dart';
import 'package:feature_generator/src/generators/repository_interface_generator.dart';
import 'package:feature_generator/src/generators/use_case_generator.dart';
import 'package:feature_generator/src/models.dart';
import 'package:path/path.dart' as path;

Future<void> generateFeature(ApiInfo apiInfo, String featuresDir) async {
  final featureDir = path.join(featuresDir, apiInfo.featureName);

  // Create directory structure (keep sequential — this is fine)
  await Future.wait([
    Directory(path.join(featureDir, 'data', 'sources')).create(recursive: true),
    Directory(
      path.join(featureDir, 'data', 'implements'),
    ).create(recursive: true),
    Directory(
      path.join(featureDir, 'domain', 'repositories'),
    ).create(recursive: true),
    Directory(
      path.join(featureDir, 'domain', 'usecases'),
    ).create(recursive: true),
    Directory(
      path.join(featureDir, 'presentation', 'getX'),
    ).create(recursive: true),
  ]);

  // Run generators even if some fail
  final futures = [
    _safe(
      () => generateRemoteDataSource(apiInfo, featureDir),
      'RemoteDataSource',
    ),
    _safe(
      () => generateRepositoryInterface(apiInfo, featureDir),
      'RepositoryInterface',
    ),
    _safe(
      () => generateRepositoryImplementation(apiInfo, featureDir),
      'RepositoryImplementation',
    ),
    _safe(() => generateUseCases(apiInfo, featureDir), 'UseCases'),
    _safe(() => generatePresentationStubs(apiInfo, featureDir), 'Presentation'),
  ];

  await Future.wait(futures);
}

Future<void> _safe(Future<void> Function() task, String name) async {
  try {
    await task();
  } catch (e, st) {
    stderr.writeln('❌ $name generation failed: $e');
    stderr.writeln(st);
  }
}
