import 'dart:io';
import 'package:feature_generator/src/file_modifier.dart';
import 'package:feature_generator/src/models.dart';
import 'package:feature_generator/src/naming_utils.dart';
import 'package:path/path.dart' as path;

Future<void> generatePresentationStubs(
  ApiInfo apiInfo,
  String featureDir,
  FileModifier fileModifier,
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
  final bindingBody = '''class ${toPascalCase(apiInfo.featureName)}Binding {
  // TODO: Implement the ${toPascalCase(apiInfo.featureName)}Binding
}''';

  await fileModifier.writeFile(
    file: bindingFile,
    bodyContent: bindingBody,
    imports: [],
    featureName: apiInfo.featureName,
    fileType: 'binding',
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
  final exportBody = '''library;

export '${apiInfo.featureName}_binding.dart';''';

  await fileModifier.writeFile(
    file: exportFile,
    bodyContent: exportBody,
    imports: [],
    featureName: apiInfo.featureName,
    fileType: 'export',
  );
}

