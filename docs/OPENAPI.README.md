# How to Generate files

openapi-generator generate -i docs/swagger.json -g dart-dio -o openapi

dart pub run build_runner build

dart tool/bin/generate_features.dart
