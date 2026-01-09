import 'dart:io';

import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/models.dart';
import 'package:path/path.dart' as path;

/// Generate barrel files for usecases (params.dart and use_cases.dart)
Future<void> generateBarrelFiles(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
) async {
  final usecasesDir = Directory(path.join(featureDir, 'domain', 'usecases'));

  if (!usecasesDir.existsSync()) {
    return; // No usecases directory, skip barrel generation
  }

  // Collect all use case folders
  final useCaseFolders = <String>[];
  final useCaseEntries = usecasesDir.listSync();
  
  for (final entry in useCaseEntries) {
    if (entry is Directory) {
      final folderName = path.basename(entry.path);
      // Check if it's a use case folder (contains both params and use_case files)
      final paramsFiles = entry
          .listSync()
          .where((f) => f is File && f.path.endsWith('_params.dart'))
          .toList();
      final useCaseFiles = entry
          .listSync()
          .where((f) => f is File && f.path.endsWith('_use_case.dart'))
          .toList();
      
      if (paramsFiles.isNotEmpty || useCaseFiles.isNotEmpty) {
        useCaseFolders.add(folderName);
      }
    }
  }

  if (useCaseFolders.isEmpty) {
    return; // No use cases found, skip barrel generation
  }

  // Generate params.dart barrel file
  await _generateParamsBarrel(apiInfo, usecasesDir, useCaseFolders, fileModifier);

  // Generate use_cases.dart barrel file (optional, for convenience)
  await _generateUseCasesBarrel(apiInfo, usecasesDir, useCaseFolders, fileModifier);
}

Future<void> _generateParamsBarrel(
  ApiInfo apiInfo,
  Directory usecasesDir,
  List<String> useCaseFolders,
  FileModifier fileModifier,
) async {
  // Get all Params files from use case folders
  final paramsExports = <String>[];
  
  for (final folderName in useCaseFolders) {
    final folderPath = path.join(usecasesDir.path, folderName);
    final folder = Directory(folderPath);
    
    if (folder.existsSync()) {
      final paramsFiles = folder
          .listSync()
          .whereType<File>()
          .where((f) => path.basename(f.path).endsWith('_params.dart'))
          .map((f) => path.basename(f.path))
          .toList();
      
      for (final paramsFile in paramsFiles) {
        final relativePath = '$folderName/$paramsFile';
        paramsExports.add("export '$relativePath';");
      }
    }
  }

  if (paramsExports.isEmpty) {
    return; // No Params files found
  }

  // Sort exports for consistency
  paramsExports.sort();

  final paramsBarrelFile = File(path.join(usecasesDir.path, 'params.dart'));
  final barrelContent = paramsExports.join('\n');

  await fileModifier.writeFile(
    file: paramsBarrelFile,
    bodyContent: barrelContent,
    imports: <String>[],
    featureName: apiInfo.featureName,
    fileType: 'params_barrel',
  );
}

Future<void> _generateUseCasesBarrel(
  ApiInfo apiInfo,
  Directory usecasesDir,
  List<String> useCaseFolders,
  FileModifier fileModifier,
) async {
  // Get all UseCase files from use case folders
  final useCaseExports = <String>[];
  
  for (final folderName in useCaseFolders) {
    final folderPath = path.join(usecasesDir.path, folderName);
    final folder = Directory(folderPath);
    
    if (folder.existsSync()) {
      final useCaseFiles = folder
          .listSync()
          .whereType<File>()
          .where((f) => path.basename(f.path).endsWith('_use_case.dart'))
          .map((f) => path.basename(f.path))
          .toList();
      
      for (final useCaseFile in useCaseFiles) {
        final relativePath = '$folderName/$useCaseFile';
        useCaseExports.add("export '$relativePath';");
      }
    }
  }

  if (useCaseExports.isEmpty) {
    return; // No UseCase files found
  }

  // Sort exports for consistency
  useCaseExports.sort();

  final useCasesBarrelFile = File(path.join(usecasesDir.path, 'use_cases.dart'));
  final barrelContent = useCaseExports.join('\n');

  await fileModifier.writeFile(
    file: useCasesBarrelFile,
    bodyContent: barrelContent,
    imports: <String>[],
    featureName: apiInfo.featureName,
    fileType: 'use_cases_barrel',
  );
}

