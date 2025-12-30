String toFeatureName(String apiClassName) {
  // Convert "PetApi" -> "pet", "StoreApi" -> "store"
  return apiClassName
      .replaceAll('Api', '')
      .replaceAllMapped(
        RegExp(r'([A-Z])'),
        (match) => match.start == 0
            ? match.group(1)!.toLowerCase()
            : '_${match.group(1)!.toLowerCase()}',
      );
}

String toPascalCase(String snakeCase) {
  return snakeCase
      .split('_')
      .map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1);
      })
      .join('');
}

String toSnakeCase(String pascalCase) {
  return pascalCase.replaceAllMapped(
    RegExp(r'([A-Z])'),
    (match) => match.start == 0
        ? match.group(1)!.toLowerCase()
        : '_${match.group(1)!.toLowerCase()}',
  );
}

String toUseCaseName(String methodName, String featureName) {
  // Convert "getPetById" -> "GetPetUseCase"
  // Convert "placeOrder" -> "PlaceOrderUseCase"
  final methodPascal = methodName.replaceAllMapped(
    RegExp(r'^(\w)'),
    (match) => match.group(1)!.toUpperCase(),
  );
  return '${methodPascal}UseCase';
}
