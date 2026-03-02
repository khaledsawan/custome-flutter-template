import 'dart:io';

import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/import_detector.dart';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:feature_generator/src/type_converter.dart';
import 'package:path/path.dart' as path;

Future<void> generateUseCases(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
) async {
  final usecasesDir = Directory(path.join(featureDir, 'domain', 'usecases'));

  for (final method in apiInfo.methods) {
    final useCaseName = toUseCaseName(method.name, apiInfo.featureName);
    final useCaseFolderName = toSnakeCase(useCaseName);

    // Delete old-style file if it exists (migration from old to new folder structure)
    final oldFile = File(
      path.join(usecasesDir.path, '$useCaseFolderName.dart'),
    );
    if (oldFile.existsSync()) {
      await oldFile.delete();
    }

    // Create folder for this use case
    final useCaseFolder = Directory(
      path.join(usecasesDir.path, useCaseFolderName),
    );
    await useCaseFolder.create(recursive: true);

    // Delete old-style files if they exist (migration from old to new naming)
    final oldParamsFile = File(path.join(useCaseFolder.path, 'params.dart'));
    if (oldParamsFile.existsSync()) {
      await oldParamsFile.delete();
    }
    final oldUseCaseFile = File(path.join(useCaseFolder.path, 'use_case.dart'));
    if (oldUseCaseFile.existsSync()) {
      await oldUseCaseFile.delete();
    }

    final returnType = convertReturnType(method.returnType, method.isNullable);
    final featurePascal = toPascalCase(apiInfo.featureName);

    // Generate Params class name
    final paramsClassName = method.parameters.isEmpty
        ? 'NoParams'
        : '${toPascalCase(method.name)}Params';

    // If method has parameters, generate params file
    if (method.parameters.isNotEmpty) {
      // Generate file name from class name (snake_case)
      final paramsFileName = '${toSnakeCase(paramsClassName)}.dart';
      final paramsFile = File(path.join(useCaseFolder.path, paramsFileName));
      final paramsClass = _generateParamsClass(method, paramsClassName);

      // Build imports for params.dart
      final paramsImports = <String>[
        "import 'package:customtemplate/core/model/i_params.dart';",
      ];

      // Check if params need JsonObject (from built_value)
      final needsJsonObject = method.parameters.any(
        (p) => p.type.contains('JsonObject'),
      );
      if (needsJsonObject) {
        paramsImports.add("import 'package:built_value/json_object.dart';");
      }

      // Check if params need openapi imports (using smart type detection)
      final needsOpenApi = method.parameters.any(
        (p) => needsOpenApiImport(p.type),
      );
      if (needsOpenApi) {
        paramsImports.add("import 'package:openapi/openapi.dart';");
      }

      // Check if params need built_collection
      final needsBuiltCollection = method.parameters.any(
        (p) => p.type.contains('BuiltList') || p.type.contains('BuiltMap'),
      );
      if (needsBuiltCollection) {
        paramsImports.add(
          "import 'package:built_collection/built_collection.dart';",
        );
      }

      await fileModifier.writeFile(
        file: paramsFile,
        bodyContent: paramsClass,
        imports: paramsImports,
        featureName: apiInfo.featureName,
        fileType: 'params_$useCaseFolderName',
      );
    }

    // Generate use_case file with name matching class name
    final useCaseFileName = '${toSnakeCase(useCaseName)}.dart';
    final useCaseFile = File(path.join(useCaseFolder.path, useCaseFileName));

    // UseCase uses Params class
    final callParams = '$paramsClassName params';
    final repositoryCall = method.parameters.isEmpty
        ? 'repository.${method.name}()'
        : 'repository.${method.name}(params: params)';

    // Build imports for use_case.dart
    final useCaseImports = <String>[
      "import 'package:customtemplate/core/usecases/usecase.dart';",
      "import 'package:customtemplate/features/${apiInfo.featureName}/domain/repositories/${apiInfo.featureName}_repository.dart';",
      "import 'package:dartz/dartz.dart';",
      "import 'package:injectable/injectable.dart';",
    ];

    // Import Params from params file if method has parameters
    if (method.parameters.isNotEmpty) {
      final paramsFileName = '${toSnakeCase(paramsClassName)}.dart';
      useCaseImports.add(
        "import 'package:customtemplate/features/${apiInfo.featureName}/domain/usecases/$useCaseFolderName/$paramsFileName';",
      );
    }

    // Check if return type needs JsonObject (from built_value)
    if (returnType.contains('JsonObject')) {
      useCaseImports.add("import 'package:built_value/json_object.dart';");
    }

    // Check if return type needs openapi imports (using smart type detection)
    if (needsOpenApiImport(returnType)) {
      useCaseImports.add("import 'package:openapi/openapi.dart';");
    }

    // Check if return type needs built_collection
    if (returnType.contains('BuiltList') || returnType.contains('BuiltMap')) {
      useCaseImports.add(
        "import 'package:built_collection/built_collection.dart';",
      );
    }

    final useCaseBodyContent =
        '''@injectable
class $useCaseName extends UseCase<$returnType, $paramsClassName> {
  final ${featurePascal}Repository repository;

  $useCaseName(this.repository);

  @override
  Future<Either> call($callParams) => $repositoryCall;
}''';

    await fileModifier.writeFile(
      file: useCaseFile,
      bodyContent: useCaseBodyContent,
      imports: useCaseImports,
      featureName: apiInfo.featureName,
      fileType: 'use_case_$useCaseFolderName',
    );
  }
}

/// Generate a Params class co-located with UseCase (public).
String _generateParamsClass(MethodInfo method, String className) {
  final fields = method.parameters
      .map((p) => '  final ${p.type} ${p.name};')
      .join('\n');

  final constructorParams = method.parameters
      .map((p) => 'this.${p.name}')
      .join(', ');

  return '''class $className extends Params {
  const $className($constructorParams);

$fields
}''';
}
