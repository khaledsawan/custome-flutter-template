import 'dart:io';

import 'package:feature_generator/feature_generator.dart';
import 'package:path/path.dart' as path;

Future<void> generateRepositoryImplementation(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
  Config config,
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

  // Generate repository methods using fetchData
  final methods = apiInfo.methods
      .map((method) {
        final paramsClassName = method.parameters.isEmpty
            ? 'NoParams'
            : '${toPascalCase(method.name)}Params';
        return _generateFetchDataMethod(method, paramsClassName);
      })
      .join('\n\n');

  // Build imports
  final imports = <String>[
    '// ignore: unused_import',
    "import 'package:built_collection/built_collection.dart';",
    "import 'package:${config.packageName}/core/base/base_repo.dart';",
    "import 'package:${config.packageName}/core/model/fetch_data_params.dart';",
    "import 'package:${config.packageName}/features/${apiInfo.featureName}/data/sources/${apiInfo.featureName}_remote_data_source.dart';",
    "import 'package:${config.packageName}/features/${apiInfo.featureName}/domain/repositories/${apiInfo.featureName}_repository.dart';",
    "import 'package:dartz/dartz.dart';",
    "import 'package:injectable/injectable.dart';",
    "import 'package:openapi/openapi.dart';",
  ];

  // Add barrel import for Params classes if any method has parameters
  final hasParamsMethods = apiInfo.methods.any((m) => m.parameters.isNotEmpty);
  if (hasParamsMethods) {
    imports.add(
      "import 'package:${config.packageName}/features/${apiInfo.featureName}/domain/usecases/params.dart';",
    );
  }

  // Add NoParams import if any method has no parameters
  if (apiInfo.methods.any((m) => m.parameters.isEmpty)) {
    imports.add("import 'package:${config.packageName}/core/usecases/usecase.dart';");
  }

  // Only add built_collection if needed
  if (!needsBuiltCollectionImport(apiInfo)) {
    imports.remove("import 'package:built_collection/built_collection.dart';");
  }

  if (needsDioImport(apiInfo)) {
    imports.add("import 'package:dio/dio.dart';");
  }
  if (needsJsonObjectImport(apiInfo)) {
    imports.add("import 'package:built_value/json_object.dart';");
  }

  final bodyContent =
      '''@LazySingleton(as: ${featurePascal}Repository)
class ${featurePascal}RepositoryImp extends BaseRepository implements ${featurePascal}Repository {
  final ${featurePascal}RemoteDataSource remoteDataSource;

  ${featurePascal}RepositoryImp({
    required this.remoteDataSource,
    required super.networkInfo,
    super.cacheManager,
  });

$methods
}''';

  await fileModifier.writeFile(
    file: file,
    bodyContent: bodyContent,
    imports: imports,
    featureName: apiInfo.featureName,
    fileType: 'repository_implementation',
  );
}

/// Generate a repository method using fetchData.
/// Params class is imported from UseCase file (domain layer).
String _generateFetchDataMethod(MethodInfo method, String paramsClassName) {
  final returnType = convertReturnType(method.returnType, method.isNullable);

  // Method signature matches interface - accepts Params object (or no params)
  final hasParams = method.parameters.isNotEmpty;
  final methodSignature = hasParams
      ? 'Future<Either<dynamic, $returnType>> ${method.name}({required $paramsClassName params})'
      : 'Future<Either<dynamic, $returnType>> ${method.name}()';

  // Build getData lambda - extract DTOs from Params when calling remote data source
  // In the getData lambda, 'p' is the Params object passed from requestParams
  final apiParams = method.parameters
      .map((p) => '${p.name}: p.${p.name}') // Extract DTO from Params object
      .join(', ');

  // Handle void return type
  final isVoid = method.returnType.trim() == 'void';

  // Build API call with or without parameters
  final apiCall = hasParams
      ? 'remoteDataSource.${method.name}($apiParams)'
      : 'remoteDataSource.${method.name}()';

  final getDataBody = isVoid
      ? '''    getData: (p) async {
      await $apiCall;
      return;
    }'''
      : '''    getData: (p) async {
      final response = await $apiCall;
      return response.data;
    }''';

  // Build requestParams - pass params directly (or NoParams)
  final requestParams = hasParams ? 'params' : 'const NoParams()';

  return '''  @override
  $methodSignature async {
    return fetchData<$returnType, $paramsClassName>(
      params: FetchDataParams(
$getDataBody,
        requestParams: $requestParams,
      ),
    );
  }''';
}
