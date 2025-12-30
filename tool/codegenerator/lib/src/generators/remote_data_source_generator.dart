import 'dart:io';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:path/path.dart' as path;

Future<void> generateRemoteDataSource(
  ApiInfo apiInfo,
  String featureDir,
) async {
  final file = File(
    path.join(
      featureDir,
      'data',
      'sources',
      '${apiInfo.featureName}_remote_data_source.dart',
    ),
  );
  final content =
      '''import 'package:openapi/openapi.dart';

class ${toPascalCase(apiInfo.featureName)}RemoteDataSource extends ${apiInfo.apiClassName} {
  ${toPascalCase(apiInfo.featureName)}RemoteDataSource(super.dio, super.serializers);
}
''';
  await file.writeAsString(content);
}

