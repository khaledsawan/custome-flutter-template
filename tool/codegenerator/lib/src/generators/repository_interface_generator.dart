import 'dart:io';
import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/import_detector.dart';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:feature_generator/src/type_converter.dart';
import 'package:path/path.dart' as path;

Future<void> generateRepositoryInterface(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
) async {
  final file = File(
    path.join(
      featureDir,
      'domain',
      'repositories',
      '${apiInfo.featureName}_repository.dart',
    ),
  );

  final methods = apiInfo.methods
      .map((method) {
        final returnType = convertReturnType(
          method.returnType,
          method.isNullable,
        );
        
        // Determine Params class name
        final paramsClassName = method.parameters.isEmpty
            ? 'NoParams'
            : '${toPascalCase(method.name)}Params';

        // Method signature uses Params class
        final methodSignature = method.parameters.isEmpty
            ? '  Future<Either<dynamic, $returnType>> ${method.name}();'
            : '  Future<Either<dynamic, $returnType>> ${method.name}({required $paramsClassName params});';

        return methodSignature;
      })
      .join('\n');

  // Build imports
  final imports = <String>[
    "import 'package:dartz/dartz.dart';",
  ];

  // Add barrel import for Params classes if any method has parameters
  final hasParamsMethods = apiInfo.methods.any((m) => m.parameters.isNotEmpty);
  if (hasParamsMethods) {
    imports.add("import 'package:customtemplate/features/${apiInfo.featureName}/domain/usecases/params.dart';");
  }

  // Note: NoParams is not imported here because the repository interface
  // doesn't use it directly - methods without parameters have no params in the signature.
  // NoParams is only used in the implementation.

  // Keep openapi imports for return types only (not for parameters)
  // Check if return types need openapi imports (using smart type detection)
  final needsOpenApi = apiInfo.methods.any((m) {
    final returnType = convertReturnType(m.returnType, m.isNullable);
    return needsOpenApiImport(returnType);
  });

  if (needsOpenApi) {
    imports.add('// ignore: unused_import');
    imports.add("import 'package:openapi/openapi.dart';");
  }

  if (needsBuiltCollectionImport(apiInfo)) {
    imports.add("import 'package:built_collection/built_collection.dart';");
  }

  if (needsJsonObjectImport(apiInfo)) {
    imports.add("import 'package:built_value/json_object.dart';");
  }

  final bodyContent = '''abstract class ${toPascalCase(apiInfo.featureName)}Repository {
$methods
}''';

  await fileModifier.writeFile(
    file: file,
    bodyContent: bodyContent,
    imports: imports,
    featureName: apiInfo.featureName,
    fileType: 'repository_interface',
  );
}

