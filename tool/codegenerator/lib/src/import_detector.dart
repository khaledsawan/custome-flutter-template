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
    imports.add("import 'package:dio/dio.dart';");
  }

  return imports;
}
