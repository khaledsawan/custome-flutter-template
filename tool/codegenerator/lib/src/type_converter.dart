String convertReturnType(String returnType, bool isNullable) {
  var converted = returnType;

  // Handle void
  if (converted.trim() == 'void') {
    return 'void';
  }

  // Ensure nullable if original was nullable (contains ?)
  if (!converted.contains('?') && isNullable) {
    converted = '$converted?';
  }

  return converted;
}
