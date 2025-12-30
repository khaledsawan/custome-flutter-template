import 'dart:io';
import 'package:feature_generator/src/import_detector.dart';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:feature_generator/src/type_converter.dart';
import 'package:path/path.dart' as path;

Future<void> generateRepositoryImplementation(
  ApiInfo apiInfo,
  String featureDir,
) async {
  final file = File(
    path.join(
      featureDir,
      'data',
      'implements',
      '${apiInfo.featureName}_repository_imp.dart',
    ),
  );

  final featurePascal = toPascalCase(apiInfo.featureName);

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

        // Build parameter mapping for API call
        final apiParams = method.parameters
            .map((p) => '${p.name}: ${p.name}')
            .join(', ');

        final apiParamsString = apiParams.isNotEmpty ? apiParams : '';

        // Handle conversions
        var resultExtraction = 'result.data';
        if (method.returnType == 'void') {
          resultExtraction = 'result';
        }

        return '''  @override
  Future<Either<dynamic, $returnType>> ${method.name}($paramsString) async {
    try {
      final result = await remoteDataSource.${method.name}($apiParamsString);
      return Right($resultExtraction);
    } catch (e) {
      return Left(e);
    }
  }''';
      })
      .join('\n\n');

  // Build imports
  final imports = <String>[
    "import 'package:customtemplate/features/${apiInfo.featureName}/data/sources/${apiInfo.featureName}_remote_data_source.dart';",
    "import 'package:customtemplate/features/${apiInfo.featureName}/domain/repositories/${apiInfo.featureName}_repository.dart';",
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

  final content =
      '''${imports.join('\n')}

class ${featurePascal}RepositoryImp implements ${featurePascal}Repository {
  late ${featurePascal}RemoteDataSource remoteDataSource;

  ${featurePascal}RepositoryImp({required this.remoteDataSource});

$methods
}
''';
  await file.writeAsString(content);
}

