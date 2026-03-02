import 'package:feature_generator/src/models.dart';

bool needsBuiltCollectionImport(ApiInfo apiInfo) {
  // Check if any method uses BuiltList or BuiltMap in parameters
  for (final method in apiInfo.methods) {
    for (final param in method.parameters) {
      if (param.type.contains('BuiltList') || param.type.contains('BuiltMap')) {
        return true;
      }
    }
  }

  // Check if any method uses BuiltList or BuiltMap in return types
  for (final method in apiInfo.methods) {
    if (method.returnType.contains('BuiltList') ||
        method.returnType.contains('BuiltMap')) {
      return true;
    }
  }
  return false;
}

bool needsDioImport(ApiInfo apiInfo) {
  // Check if any method uses MultipartFile in parameters
  for (final method in apiInfo.methods) {
    for (final param in method.parameters) {
      if (param.type.contains('MultipartFile')) {
        return true;
      }
    }
  }
  return false;
}

bool needsJsonObjectImport(ApiInfo apiInfo) {
  // Check if any method uses JsonObject in parameters
  for (final method in apiInfo.methods) {
    for (final param in method.parameters) {
      if (param.type.contains('JsonObject')) {
        return true;
      }
    }
  }

  // Check if any method uses JsonObject in return types
  for (final method in apiInfo.methods) {
    if (method.returnType.contains('JsonObject')) {
      return true;
    }
  }

  return false;
}

/// Check if a type string needs openapi import.
/// Extracts base type names from complex types (handling generics, nullable markers)
/// and determines if the type likely comes from the openapi package.
bool needsOpenApiImport(String typeString) {
  // List of known non-openapi types (primitives, built types, etc.)
  const excludedTypes = {
    'String',
    'int',
    'bool',
    'double',
    'void',
    'DateTime',
    'dynamic',
    'BuiltList',
    'BuiltMap',
    'JsonObject',
    'NoParams',
    'Params',
    'Either',
    'Future',
    'Response',
  };

  // Extract base types from the type string
  final baseTypes = _extractBaseTypes(typeString);

  for (final baseType in baseTypes) {
    // Check if it's an excluded type
    if (excludedTypes.contains(baseType)) {
      continue;
    }

    // Check if it matches Params class pattern (e.g., "ApiServicesAppAccountActivateemailPostParams")
    // These are generated classes, not from openapi
    if (baseType.endsWith('Params')) {
      continue;
    }

    // If type contains at least one capital letter, it's likely a class/enum from openapi
    if (RegExp(r'[A-Z]').hasMatch(baseType)) {
      return true;
    }
  }

  return false;
}

/// Extract base type names from a type string, handling generics, nullable markers, etc.
/// Examples:
/// - "AutomationTriggerType?" -> ["AutomationTriggerType"]
/// - "BuiltList<AutomationActionType>" -> ["AutomationActionType"]
/// - "ValueTupleOfIEnumerableOfAutomationHistoryInt64?" -> ["ValueTupleOfIEnumerableOfAutomationHistoryInt64"]
List<String> _extractBaseTypes(String typeString) {
  final baseTypes = <String>[];

  // Remove nullable marker
  var cleaned = typeString.replaceAll('?', '').trim();

  // Handle generic types like BuiltList<Type>, BuiltMap<Key, Value>
  final genericPattern = RegExp(r'(\w+)<([^>]+)>');
  final genericMatch = genericPattern.firstMatch(cleaned);

  if (genericMatch != null) {
    // Extract the generic container type (e.g., "BuiltList")
    final containerType = genericMatch.group(1)!;
    baseTypes.add(containerType);

    // Extract and process the inner types
    final innerTypes = genericMatch.group(2)!;
    
    // Handle multiple generic parameters (e.g., "BuiltMap<Key, Value>")
    var depth = 0;
    var currentType = StringBuffer();
    final innerTypeList = <String>[];

    for (var i = 0; i < innerTypes.length; i++) {
      final char = innerTypes[i];
      if (char == '<') {
        depth++;
        currentType.write(char);
      } else if (char == '>') {
        depth--;
        currentType.write(char);
      } else if (char == ',' && depth == 0) {
        innerTypeList.add(currentType.toString().trim());
        currentType.clear();
      } else {
        currentType.write(char);
      }
    }
    if (currentType.isNotEmpty) {
      innerTypeList.add(currentType.toString().trim());
    }

    // Recursively extract base types from inner types
    for (final innerType in innerTypeList) {
      baseTypes.addAll(_extractBaseTypes(innerType));
    }
  } else {
    // No generics, just extract the base type name
    // Remove any whitespace and get the main type
    final typeMatch = RegExp(r'^(\w+)').firstMatch(cleaned);
    if (typeMatch != null) {
      baseTypes.add(typeMatch.group(1)!);
    }
  }

  return baseTypes;
}

List<String> getUseCaseImports({
  required String featureName,
  required String returnType,
  required String paramsType,
}) {
  final imports = <String>[
    "import 'package:customtemplate/core/usecases/usecase.dart';",
    "import 'package:customtemplate/features/$featureName/domain/repositories/${featureName}_repository.dart';",
    "import 'package:dartz/dartz.dart';",
    '// ignore: unused_import',
    "import 'package:openapi/openapi.dart';",
  ];

  // Check if return type uses BuiltList/BuiltMap
  if (returnType.contains('BuiltList') || returnType.contains('BuiltMap')) {
    imports.add("import 'package:built_collection/built_collection.dart';");
  }

  // Check if params type uses BuiltList/BuiltMap
  if (paramsType.contains('BuiltList') || paramsType.contains('BuiltMap')) {
    if (!imports.contains(
      "import 'package:built_collection/built_collection.dart';",
    )) {
      imports.add("import 'package:built_collection/built_collection.dart';");
    }
  }

  // Check if return type or params type uses JsonObject
  if (returnType.contains('JsonObject') || paramsType.contains('JsonObject')) {
    imports.add("import 'package:built_value/json_object.dart';");
  }

  // Check if params type uses MultipartFile
  if (paramsType.contains('MultipartFile')) {
    imports.add("import 'package:dio/dio.dart' show MultipartFile;");
  }

  return imports;
}
