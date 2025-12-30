class ApiInfo {
  final String apiClassName;
  final String featureName;
  final List<MethodInfo> methods;

  ApiInfo({
    required this.apiClassName,
    required this.featureName,
    required this.methods,
  });
}

class MethodInfo {
  final String name;
  final String returnType;
  final List<ParameterInfo> parameters;
  final bool isNullable;

  MethodInfo({
    required this.name,
    required this.returnType,
    required this.parameters,
    required this.isNullable,
  });
}

class ParameterInfo {
  final String name;
  final String type;
  final bool isRequired;
  final bool isNullable;

  ParameterInfo({
    required this.name,
    required this.type,
    required this.isRequired,
    required this.isNullable,
  });
}
