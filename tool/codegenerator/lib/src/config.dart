import 'dart:io';

import 'package:yaml/yaml.dart';

class Config {
  final FeatureConfig features;
  final FolderConfig folders;
  final FileMode fileMode;

  Config({
    required this.features,
    required this.folders,
    required this.fileMode,
  });

  factory Config.fromYaml(String yamlContent) {
    final doc = loadYaml(yamlContent) as Map;

    // Parse features config
    final features = doc['features'] as Map?;
    final featureConfig = features != null
        ? FeatureConfig.fromMap(features)
        : FeatureConfig.defaultConfig();

    // Parse folders config
    final folders = doc['folders'] as Map?;
    final folderConfig = folders != null
        ? FolderConfig.fromMap(folders)
        : FolderConfig.defaultConfig();

    // Parse file mode
    final fileModeStr = doc['file_mode'] as String?;
    final fileMode = fileModeStr == 'overwrite'
        ? FileMode.overwrite
        : FileMode.modify;

    return Config(
      features: featureConfig,
      folders: folderConfig,
      fileMode: fileMode,
    );
  }

  factory Config.defaultConfig() {
    return Config(
      features: FeatureConfig.defaultConfig(),
      folders: FolderConfig.defaultConfig(),
      fileMode: FileMode.modify,
    );
  }

  static Config? loadFromFile(String? configPath) {
    if (configPath == null || configPath.isEmpty) {
      return Config.defaultConfig();
    }

    final file = File(configPath);
    if (!file.existsSync()) {
      return Config.defaultConfig();
    }

    try {
      final content = file.readAsStringSync();
      return Config.fromYaml(content);
    } catch (e) {
      print('Warning: Error parsing config file: $e');
      print('Using default configuration.');
      return Config.defaultConfig();
    }
  }
}

class FeatureConfig {
  final List<String>? include;
  final List<String>? exclude;

  FeatureConfig({this.include, this.exclude});

  factory FeatureConfig.fromMap(Map map) {
    final include = map['include'] as List?;
    final exclude = map['exclude'] as List?;

    return FeatureConfig(
      include: include?.cast<String>(),
      exclude: exclude?.cast<String>(),
    );
  }

  factory FeatureConfig.defaultConfig() {
    return FeatureConfig(include: null, exclude: null);
  }
}

class FolderConfig {
  final DataFolders data;
  final DomainFolders domain;
  final PresentationFolders presentation;

  FolderConfig({
    required this.data,
    required this.domain,
    required this.presentation,
  });

  factory FolderConfig.fromMap(Map map) {
    final data = map['data'] as Map?;
    final domain = map['domain'] as Map?;
    final presentation = map['presentation'] as Map?;

    return FolderConfig(
      data: data != null
          ? DataFolders.fromMap(data)
          : DataFolders.defaultConfig(),
      domain: domain != null
          ? DomainFolders.fromMap(domain)
          : DomainFolders.defaultConfig(),
      presentation: presentation != null
          ? PresentationFolders.fromMap(presentation)
          : PresentationFolders.defaultConfig(),
    );
  }

  factory FolderConfig.defaultConfig() {
    return FolderConfig(
      data: DataFolders.defaultConfig(),
      domain: DomainFolders.defaultConfig(),
      presentation: PresentationFolders.defaultConfig(),
    );
  }
}

class DataFolders {
  final bool sources;
  final bool implements;

  DataFolders({required this.sources, required this.implements});

  factory DataFolders.fromMap(Map map) {
    return DataFolders(
      sources: map['sources'] as bool? ?? true,
      implements: map['implements'] as bool? ?? true,
    );
  }

  factory DataFolders.defaultConfig() {
    return DataFolders(sources: true, implements: true);
  }
}

class DomainFolders {
  final bool repositories;
  final bool usecases;

  DomainFolders({required this.repositories, required this.usecases});

  factory DomainFolders.fromMap(Map map) {
    return DomainFolders(
      repositories: map['repositories'] as bool? ?? true,
      usecases: map['usecases'] as bool? ?? true,
    );
  }

  factory DomainFolders.defaultConfig() {
    return DomainFolders(repositories: true, usecases: true);
  }
}

class PresentationFolders {
  final bool getX;

  PresentationFolders({required this.getX});

  factory PresentationFolders.fromMap(Map map) {
    return PresentationFolders(getX: map['getX'] as bool? ?? true);
  }

  factory PresentationFolders.defaultConfig() {
    return PresentationFolders(getX: true);
  }
}

enum FileMode { modify, overwrite }
