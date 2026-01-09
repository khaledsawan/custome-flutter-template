import 'dart:io';

import 'package:feature_generator/src/config.dart';
import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/folder_filter.dart';
import 'package:feature_generator/src/generators/barrel_file_generator.dart';
import 'package:feature_generator/src/generators/presentation_stub_generator.dart';
import 'package:feature_generator/src/generators/remote_data_source_generator.dart';
import 'package:feature_generator/src/generators/repository_implementation_generator.dart';
import 'package:feature_generator/src/generators/repository_interface_generator.dart';
import 'package:feature_generator/src/generators/use_case_generator.dart';
import 'package:feature_generator/src/models.dart';
import 'package:path/path.dart' as path;

Future<void> generateFeature(
  ApiInfo apiInfo,
  String featuresDir,
  Config config,
) async {
  final featureDir = path.join(featuresDir, apiInfo.featureName);
  final folderFilter = FolderFilter(config.folders);
  final fileModifier = FileModifier(config.fileMode);

  // Create directory structure based on config
  final dirsToCreate = <Future<void>>[];
  
  if (folderFilter.shouldGenerateDataSources()) {
    dirsToCreate.add(
      Directory(path.join(featureDir, 'data', 'sources')).create(recursive: true),
    );
  }
  
  if (folderFilter.shouldGenerateDataImplements()) {
    dirsToCreate.add(
      Directory(path.join(featureDir, 'data', 'implements')).create(recursive: true),
    );
  }
  
  if (folderFilter.shouldGenerateDomainRepositories()) {
    dirsToCreate.add(
      Directory(path.join(featureDir, 'domain', 'repositories')).create(recursive: true),
    );
  }
  
  if (folderFilter.shouldGenerateDomainUseCases()) {
    dirsToCreate.add(
      Directory(path.join(featureDir, 'domain', 'usecases')).create(recursive: true),
    );
  }
  
  if (folderFilter.shouldGeneratePresentationGetX()) {
    dirsToCreate.add(
      Directory(path.join(featureDir, 'presentation', 'getX')).create(recursive: true),
    );
  }

  await Future.wait(dirsToCreate);

  // Run generators based on config
  final futures = <Future<void>>[];
  
  if (folderFilter.shouldGenerateDataSources()) {
    futures.add(
      _safe(
        () => generateRemoteDataSource(apiInfo, featureDir, fileModifier),
        'RemoteDataSource',
      ),
    );
  }
  
  if (folderFilter.shouldGenerateDomainRepositories()) {
    futures.add(
      _safe(
        () => generateRepositoryInterface(apiInfo, featureDir, fileModifier),
        'RepositoryInterface',
      ),
    );
  }
  
  if (folderFilter.shouldGenerateDataImplements()) {
    futures.add(
      _safe(
        () => generateRepositoryImplementation(apiInfo, featureDir, fileModifier),
        'RepositoryImplementation',
      ),
    );
  }
  
  if (folderFilter.shouldGenerateDomainUseCases()) {
    futures.add(
      _safe(
        () => generateUseCases(apiInfo, featureDir, fileModifier),
        'UseCases',
      ),
    );
  }
  
  if (folderFilter.shouldGeneratePresentationGetX()) {
    futures.add(
      _safe(
        () => generatePresentationStubs(apiInfo, featureDir, fileModifier),
        'Presentation',
      ),
    );
  }

  await Future.wait(futures);

  // Generate barrel files after all use cases are generated
  if (folderFilter.shouldGenerateDomainUseCases()) {
    await _safe(
      () => generateBarrelFiles(apiInfo, featureDir, fileModifier),
      'BarrelFiles',
    );
  }
}

Future<void> _safe(Future<void> Function() task, String name) async {
  try {
    await task();
  } catch (e, st) {
    stderr.writeln('❌ $name generation failed: $e');
    stderr.writeln(st);
  }
}
