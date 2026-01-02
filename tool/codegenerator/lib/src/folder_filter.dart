import 'package:feature_generator/src/config.dart';

/// Determines if folders should be generated based on config
class FolderFilter {
  final FolderConfig config;

  FolderFilter(this.config);

  bool shouldGenerateDataSources() => config.data.sources;
  bool shouldGenerateDataImplements() => config.data.implements;
  bool shouldGenerateDomainRepositories() => config.domain.repositories;
  bool shouldGenerateDomainUseCases() => config.domain.usecases;
  bool shouldGeneratePresentationGetX() => config.presentation.getX;
}

