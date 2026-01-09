import 'dart:io';

import 'package:feature_generator/src/code_markers.dart';
import 'package:feature_generator/src/config.dart';

/// Handles file writing with modification support
class FileModifier {
  final FileMode fileMode;

  FileModifier(this.fileMode);

  /// Write file content with body and imports
  /// For modify mode, wraps body in markers and merges with existing file
  Future<void> writeFile({
    required File file,
    required String bodyContent,
    required List<String> imports,
    required String featureName,
    required String fileType,
  }) async {
    final wrappedBody = fileMode == FileMode.modify
        ? CodeMarkers.wrapWithMarkers(bodyContent, featureName, fileType)
        : bodyContent;

    final fullContent = imports.isEmpty
        ? wrappedBody
        : '${imports.join('\n')}\n\n$wrappedBody';

    if (fileMode == FileMode.overwrite || !file.existsSync()) {
      await file.writeAsString(fullContent);
      return;
    }

    // Modify mode: merge with existing content
    final existingContent = await file.readAsString();

    // Extract imports and remove them from content for merging
    final existingImports = _extractImports(existingContent);
    final contentWithoutImports = _removeImports(existingContent);

    final mergedContent = CodeMarkers.mergeContent(
      generatedContent: bodyContent,
      featureName: featureName,
      fileType: fileType,
      existingContent: contentWithoutImports,
    );

    // Merge imports - combine existing and new imports
    final allImports = _mergeImports(existingImports, imports);
    final finalContent = allImports.isEmpty
        ? mergedContent
        : '${allImports.join('\n')}\n\n$mergedContent';

    await file.writeAsString(finalContent);
  }

  List<String> _extractImports(String content) {
    final lines = content.split('\n');
    final imports = <String>[];

    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.startsWith('import ') || trimmed.startsWith('// ignore')) {
        imports.add(line); // Keep original formatting
      } else if (trimmed.isEmpty && imports.isEmpty) {
        continue;
      } else {
        break; // Past imports section
      }
    }

    return imports;
  }

  List<String> _mergeImports(List<String> existing, List<String> newImports) {
    final all = <String>{};
    
    // Check if new imports include a barrel import (params.dart or use_cases.dart)
    final hasBarrelImport = newImports.any((imp) {
      final trimmed = imp.trim();
      return trimmed.contains('/usecases/params.dart') || 
             trimmed.contains('/usecases/use_cases.dart');
    });
    
    // Add new imports first (these take precedence)
    all.addAll(newImports);
    
    // Add existing imports, but filter out old-style imports
    for (final existingImport in existing) {
      final trimmed = existingImport.trim();
      
      // If we have a barrel import, remove all individual Params imports
      if (hasBarrelImport && trimmed.contains('/usecases/')) {
        // Check if this is an individual Params or UseCase import
        final isParamsImport = trimmed.contains('_params.dart');
        final isUseCaseImport = trimmed.contains('_use_case.dart');
        
        if (isParamsImport || isUseCaseImport) {
          continue; // Skip individual imports when barrel import exists
        }
      }
      
      // Skip old-style imports if we have new-style imports for the same use case
      if (trimmed.contains('/usecases/')) {
        // Extract use case folder name from the import path
        // Example: .../usecases/api_services_app_account_activateemail_post_use_case/params.dart
        final useCaseMatch = RegExp(r'/usecases/([^/]+)/').firstMatch(trimmed);
        if (useCaseMatch != null) {
          final useCaseFolderName = useCaseMatch.group(1)!;
          final fileName = trimmed.split('/').last.replaceAll("';", '').replaceAll("import 'package:", '');
          
          // Check if this is an old-style import (params.dart or use_case.dart)
          if (fileName == 'params.dart' || fileName == 'use_case.dart') {
            // Check if we have a new-style import for the same use case folder
            final hasNewStyle = newImports.any((newImport) {
              if (!newImport.contains('/usecases/')) return false;
              final newUseCaseMatch = RegExp(r'/usecases/([^/]+)/').firstMatch(newImport);
              if (newUseCaseMatch == null) return false;
              final newUseCaseFolderName = newUseCaseMatch.group(1)!;
              // Same use case folder, but with new-style file name (not params.dart or use_case.dart)
              if (newUseCaseFolderName == useCaseFolderName) {
                final newFileName = newImport.split('/').last.replaceAll("';", '').replaceAll("import 'package:", '');
                return newFileName != 'params.dart' && newFileName != 'use_case.dart';
              }
              return false;
            });
            if (hasNewStyle) {
              continue; // Skip old-style import
            }
          }
        }
        
        // Skip old-style usecase imports (ending with _use_case.dart') if we have new folder-style imports
        if (trimmed.contains("_use_case.dart'")) {
          // Extract usecase name from old import path
          final parts = trimmed.split('/');
          final fileName = parts.last.replaceAll("';", '').replaceAll("import '", '');
          if (fileName.endsWith('_use_case.dart')) {
            final useCaseName = fileName.replaceAll('_use_case.dart', '');
            // Check if we have a corresponding new-style import (ending with /params.dart)
            final hasNewStyle = newImports.any((newImport) => 
              newImport.contains('/usecases/') && 
              newImport.contains('$useCaseName/params.dart'));
            if (hasNewStyle) {
              continue; // Skip old-style import
            }
          }
        }
      }
      
      all.add(existingImport);
    }
    
    return all.toList()..sort();
  }

  String _removeImports(String content) {
    final lines = content.split('\n');
    final result = <String>[];
    bool pastImports = false;

    for (final line in lines) {
      final trimmed = line.trim();
      // Remove import statements, ignore comments, and raw package paths (old broken imports)
      if (!pastImports &&
          (trimmed.startsWith('import ') || 
           trimmed.startsWith('// ignore') ||
           (trimmed.startsWith('package:') && !trimmed.startsWith("import 'package:")))) {
        continue; // Skip import lines and raw package paths
      }
      if (!pastImports && trimmed.isEmpty) {
        continue; // Skip empty lines before imports
      }
      pastImports = true;
      result.add(line);
    }

    return result.join('\n').trim();
  }
}
