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
        final params = method.parameters
            .map((p) {
              final required = p.isRequired ? 'required ' : '';
              return '$required${p.type} ${p.name}';
            })
            .join(', ');
        final paramsString = params.isNotEmpty ? '{$params}' : '';

        return '  Future<Either<dynamic, $returnType>> ${method.name}($paramsString);';
      })
      .join('\n');

  // Build imports
  final imports = <String>[
    "import 'package:dartz/dartz.dart';",
    '// ignore: unused_import',
    "import 'package:openapi/openapi.dart';",
  ];

  if (needsBuiltCollectionImport(apiInfo)) {
    imports.add("import 'package:built_collection/built_collection.dart';");
  }

  if (needsDioImport(apiInfo)) {
    imports.add("import 'package:dio/dio.dart';");
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

