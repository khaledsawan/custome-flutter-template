import 'dart:io';

import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:path/path.dart' as path;

Future<void> generateRemoteDataSource(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
) async {
  final file = File(
    path.join(
      featureDir,
      'data',
      'sources',
      '${apiInfo.featureName}_remote_data_source.dart',
    ),
  );

  final bodyContent =
      '''@singleton
class ${toPascalCase(apiInfo.featureName)}RemoteDataSource extends ${apiInfo.apiClassName} {
  ${toPascalCase(apiInfo.featureName)}RemoteDataSource(super.dio, super.serializers);
}''';

  final imports = [
    "import 'package:injectable/injectable.dart';",
    "import 'package:openapi/openapi.dart';",
  ];

  await fileModifier.writeFile(
    file: file,
    bodyContent: bodyContent,
    imports: imports,
    featureName: apiInfo.featureName,
    fileType: 'remote_data_source',
  );
}
