import 'package:feature_generator/src/config.dart';

/// Determines if a feature should be generated based on config
class FeatureFilter {
  final FeatureConfig config;

  FeatureFilter(this.config);

  /// Check if a feature should be generated
  bool shouldGenerate(String featureName) {
    // If include list exists and is not empty, only generate listed features
    if (config.include != null && config.include!.isNotEmpty) {
      return config.include!.contains(featureName);
    }

    // If exclude list exists, generate all except excluded
    if (config.exclude != null && config.exclude!.isNotEmpty) {
      return !config.exclude!.contains(featureName);
    }

    // Default: generate all features
    return true;
  }

  /// Filter list of feature names based on config
  List<String> filterFeatures(List<String> featureNames) {
    return featureNames.where(shouldGenerate).toList();
  }
}

