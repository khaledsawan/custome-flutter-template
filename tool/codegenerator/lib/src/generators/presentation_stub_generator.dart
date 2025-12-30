import 'dart:io';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:path/path.dart' as path;

Future<void> generatePresentationStubs(
  ApiInfo apiInfo,
  String featureDir,
) async {
  // Generate binding file
  final bindingFile = File(
    path.join(
      featureDir,
      'presentation',
      'getX',
      '${apiInfo.featureName}_binding.dart',
    ),
  );
  await bindingFile.writeAsString(
    '''class ${toPascalCase(apiInfo.featureName)}Binding {
  // TODO: Implement the ${toPascalCase(apiInfo.featureName)}Binding
}
''',
  );

  // Generate library export file
  final exportFile = File(
    path.join(
      featureDir,
      'presentation',
      'getX',
      '${apiInfo.featureName}.dart',
    ),
  );
  await exportFile.writeAsString('''library;

export '${apiInfo.featureName}_binding.dart';
''');
}

