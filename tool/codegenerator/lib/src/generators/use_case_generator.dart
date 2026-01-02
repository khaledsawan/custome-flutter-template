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
    final file = File(
      path.join(usecasesDir.path, '${toSnakeCase(useCaseName)}.dart'),
    );

    final returnType = convertReturnType(method.returnType, method.isNullable);
    final featurePascal = toPascalCase(apiInfo.featureName);

    // Determine UseCase parameter type and call signature
    String paramsType;
    String callParams;
    String repositoryCall;

    if (method.parameters.isEmpty) {
      paramsType = 'NoParams';
      callParams = 'NoParams params';
      repositoryCall = 'repository.${method.name}()';
    } else {
      // Build parameter list for UseCase call method
      final callMethodParams = method.parameters
          .map((p) {
            final required = p.isRequired ? '' : '';
            return '$required${p.type} ${p.name}';
          })
          .join(', ');

      if (method.parameters.length == 1 && method.parameters.first.isRequired) {
        // Single required parameter - use directly as param type
        final param = method.parameters.first;
        paramsType = param.type.replaceAll('?', '');
        callParams = '$paramsType ${param.name}';
        repositoryCall =
            'repository.${method.name}(${param.name}: ${param.name})';
      } else {
        // Multiple parameters - use named parameters
        paramsType = '({$callMethodParams})';
        callParams = '$paramsType params';
        // Map params to repository call
        final mappedParams = method.parameters
            .map((p) => '${p.name}: params.${p.name}')
            .join(', ');
        repositoryCall = 'repository.${method.name}($mappedParams)';
      }
    }

    // Build imports for this use case
    final imports = getUseCaseImports(
      featureName: apiInfo.featureName,
      returnType: returnType,
      paramsType: paramsType,
    );

    final bodyContent = '''class $useCaseName extends UseCase<$returnType, $paramsType> {
  final ${featurePascal}Repository repository;

  $useCaseName({required this.repository});

  @override
  Future<Either> call($callParams) => $repositoryCall;
}''';

    await fileModifier.writeFile(
      file: file,
      bodyContent: bodyContent,
      imports: imports,
      featureName: apiInfo.featureName,
      fileType: 'use_case_${toSnakeCase(useCaseName)}',
    );
  }
}
