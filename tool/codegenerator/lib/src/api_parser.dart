import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:path/path.dart' as path;

ApiInfo parseApiFile(String content, String filePath) {
  // Extract class name (e.g., "class PetApi")
  final classMatch = RegExp(r'class\s+(\w+Api)').firstMatch(content);
  if (classMatch == null) {
    throw Exception('Could not find API class in ${path.basename(filePath)}');
  }
  final apiClassName = classMatch.group(1)!;
  final featureName = toFeatureName(apiClassName);

  // Extract all methods
  final methods = <MethodInfo>[];
  // Match Future<Response< pattern to find method start
  final futureResponsePattern = RegExp(r'Future<Response<');

  var searchPos = 0;
  while (searchPos < content.length) {
    final substring = content.substring(searchPos);
    final match = futureResponsePattern.firstMatch(substring);
    if (match == null) break;

    // Extract return type by counting angle brackets
    final startPos = searchPos + match.end;
    var angleCount = 1;
    var endPos = startPos;

    for (var i = startPos; i < content.length && angleCount > 0; i++) {
      if (content[i] == '<') angleCount++;
      if (content[i] == '>') angleCount--;
      endPos = i;
      if (angleCount == 0) break;
    }

    final returnType = content.substring(startPos, endPos).trim();

    // Find method name after the closing >>
    final afterReturnType = content.substring(endPos + 1);
    final methodNameMatch = RegExp(
      r'\s+(\w+)\s*\(\s*\{',
    ).firstMatch(afterReturnType);
    if (methodNameMatch == null) {
      searchPos = endPos + 1;
      continue;
    }

    final methodName = methodNameMatch.group(1)!;

    // Find the matching closing brace for the parameters
    final braceMatch = RegExp(
      r'\{',
    ).firstMatch(afterReturnType.substring(methodNameMatch.start));
    if (braceMatch == null) {
      searchPos = endPos + 1;
      continue;
    }
    final braceStartPos =
        endPos + 1 + methodNameMatch.start + braceMatch.start + 1;
    var braceCount = 1;
    var braceEndPos = braceStartPos;
    var inString = false;
    var stringChar = '';

    for (var j = braceStartPos; j < content.length && braceCount > 0; j++) {
      final char = content[j];

      // Handle string literals
      if (!inString && (char == '"' || char == "'" || char == '`')) {
        inString = true;
        stringChar = char;
      } else if (inString && char == stringChar && content[j - 1] != '\\') {
        inString = false;
      }

      // Only count braces if not in a string
      if (!inString) {
        if (char == '{') braceCount++;
        if (char == '}') braceCount--;
      }

      braceEndPos = j;

      if (braceCount == 0) break;
    }

    if (braceCount != 0) {
      searchPos = endPos + 1;
      continue;
    }

    final paramsString = content.substring(braceStartPos, braceEndPos);

    // Parse parameters
    final params = parseParameters(paramsString);

    // Determine if return type is nullable
    // API Response.data is always nullable, except for void which we handle separately
    final isNullable = returnType.trim() != 'void';

    methods.add(
      MethodInfo(
        name: methodName,
        returnType: returnType,
        parameters: params,
        isNullable: isNullable,
      ),
    );

    searchPos = braceEndPos + 1;
  }

  return ApiInfo(
    apiClassName: apiClassName,
    featureName: featureName,
    methods: methods,
  );
}

List<ParameterInfo> parseParameters(String paramsString) {
  final params = <ParameterInfo>[];

  // Dio-specific parameters to skip
  const dioParams = {
    'cancelToken',
    'headers',
    'extra',
    'validateStatus',
    'onSendProgress',
    'onReceiveProgress',
  };

  if (paramsString.trim().isEmpty) {
    return params;
  }

  // Split by lines and process each line
  final lines = paramsString
      .split('\n')
      .map((l) => l.trim())
      .where((l) => l.isNotEmpty)
      .toList();

  for (final line in lines) {
    // Skip comments and empty lines
    if (line.startsWith('//') || line.isEmpty) continue;

    // Pattern to match: "required Type name" or "Type? name" or "Type name"
    // Also handle default values: "Type name = value"
    // Handle generics like BuiltList<String>, Map<String, int>, etc.
    final paramMatch = RegExp(
      r'(required\s+)?([\w<>,\s\[\]?]+?)\s+(\w+)(?:\s*=\s*[^,]+)?,?\s*$',
    ).firstMatch(line.trim());

    if (paramMatch == null) continue;

    final isRequired = paramMatch.group(1) != null;
    var type = paramMatch.group(2)!.trim();
    final name = paramMatch.group(3)!;

    // Skip Dio-specific parameters
    if (dioParams.contains(name)) {
      continue;
    }

    // Clean up type (remove extra spaces, handle generics)
    type = type.replaceAll(RegExp(r'\s+'), ' ');

    params.add(
      ParameterInfo(
        name: name,
        type: type,
        isRequired: isRequired,
        isNullable: type.contains('?'),
      ),
    );
  }

  return params;
}
