import 'dart:io';
import 'package:path/path.dart' as path;

List<String> discoverApiFiles(String apiDir) {
  final directory = Directory(apiDir);
  if (!directory.existsSync()) {
    throw Exception('API directory does not exist: $apiDir');
  }

  return directory
      .listSync()
      .whereType<File>()
      .where((file) => path.basename(file.path).endsWith('_api.dart'))
      .map((file) => file.path)
      .toList();
}

