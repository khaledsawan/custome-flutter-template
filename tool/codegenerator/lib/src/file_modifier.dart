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
    final all = <String>{...existing};
    all.addAll(newImports);
    return all.toList()..sort();
  }

  String _removeImports(String content) {
    final lines = content.split('\n');
    final result = <String>[];
    bool pastImports = false;

    for (final line in lines) {
      final trimmed = line.trim();
      if (!pastImports &&
          (trimmed.startsWith('import ') || trimmed.startsWith('// ignore'))) {
        continue; // Skip import lines
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
