/// Code markers to identify generated sections in files
class CodeMarkers {
  static String startMarker(String featureName, String fileType) {
    return '// GENERATED START - $featureName - $fileType\n'
        '// This section is auto-generated. Do not edit manually.';
  }

  static String endMarker(String featureName, String fileType) {
    return '// GENERATED END - $featureName - $fileType';
  }

  static RegExp markerPattern(String featureName, String fileType) {
    return RegExp(
      r'// GENERATED START - ' +
          RegExp.escape(featureName) +
          r' - ' +
          RegExp.escape(fileType) +
          r'\n// This section is auto-generated\. Do not edit manually\.\n(.*?)// GENERATED END - ' +
          RegExp.escape(featureName) +
          r' - ' +
          RegExp.escape(fileType),
      dotAll: true,
    );
  }

  /// Wrap generated code with markers
  static String wrapWithMarkers(
    String content,
    String featureName,
    String fileType,
  ) {
    return '${startMarker(featureName, fileType)}\n\n$content\n\n${endMarker(featureName, fileType)}';
  }

  /// Extract content between markers if they exist
  static String? extractGeneratedContent(
    String fileContent,
    String featureName,
    String fileType,
  ) {
    final pattern = markerPattern(featureName, fileType);
    final match = pattern.firstMatch(fileContent);
    return match?.group(1)?.trim();
  }

  /// Extract content before the first marker
  static String extractBeforeMarkers(
    String fileContent,
    String featureName,
    String fileType,
  ) {
    final pattern = RegExp(
      r'^.*?(?=// GENERATED START - ' +
          RegExp.escape(featureName) +
          r' - ' +
          RegExp.escape(fileType) +
          r')',
      dotAll: true,
    );
    final match = pattern.firstMatch(fileContent);
    return match?.group(0)?.trim() ?? '';
  }

  /// Extract content after the last marker
  static String extractAfterMarkers(
    String fileContent,
    String featureName,
    String fileType,
  ) {
    final pattern = RegExp(
      r'// GENERATED END - ' +
          RegExp.escape(featureName) +
          r' - ' +
          RegExp.escape(fileType) +
          r'\n(.*?)$',
      dotAll: true,
    );
    final match = pattern.firstMatch(fileContent);
    return match?.group(1)?.trim() ?? '';
  }

  /// Check if file has markers
  static bool hasMarkers(
    String fileContent,
    String featureName,
    String fileType,
  ) {
    final pattern = markerPattern(featureName, fileType);
    return pattern.hasMatch(fileContent);
  }

  /// Merge generated content with existing file content
  static String mergeContent({
    required String generatedContent,
    required String featureName,
    required String fileType,
    String? existingContent,
  }) {
    // If no existing content, just return wrapped generated content
    if (existingContent == null || existingContent.trim().isEmpty) {
      return wrapWithMarkers(generatedContent, featureName, fileType);
    }

    // If file has markers, replace the section between markers
    if (hasMarkers(existingContent, featureName, fileType)) {
      final before = extractBeforeMarkers(
        existingContent,
        featureName,
        fileType,
      );
      final after = extractAfterMarkers(existingContent, featureName, fileType);
      final wrapped = wrapWithMarkers(generatedContent, featureName, fileType);

      // Combine: before + wrapped + after
      final parts = <String>[];
      if (before.isNotEmpty) parts.add(before);
      parts.add(wrapped);
      if (after.isNotEmpty) parts.add(after);

      return parts.join('\n\n');
    }

    // If file doesn't have markers, append wrapped content
    return '$existingContent\n\n${wrapWithMarkers(generatedContent, featureName, fileType)}';
  }
}
