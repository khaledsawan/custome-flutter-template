# OpenAPI Code Generation (Flutter)

This document explains how to generate Dart API clients and models from an OpenAPI (Swagger) specification using `swagger_to_dart` in a Flutter project.

---

## Example Usage

### Step 1: Define the OpenAPI specification location

Create a configuration file named `swagger_to_dart.yaml` in the root of the project.

This file defines:

- Where the OpenAPI (Swagger) specification is located (local file or URL)
- Output directories for generated code
- Naming and generation options

Make sure this file is properly configured before continuing.

---

### Step 2: Generate Dart API code (REQUIRED)

Run the following command to generate Dart models and API interfaces from the OpenAPI specification:

```bash
dart run swagger_to_dart
```

> This step generates only the base code.  
> It does NOT generate `freezed`, `json_serializable`, or `retrofit` implementations.

---

### Step 3: Generate implementations (REQUIRED)

After generating the base code, you **must** run `build_runner`.

This command generates:

- `freezed` immutable classes
- `json_serializable` JSON converters
- `retrofit` API implementations

```bash
dart run build_runner build --delete-conflicting-outputs
```

The `--delete-conflicting-outputs` flag removes old generated files to prevent conflicts.

---

## Common Mistake

Running only:

```bash
dart run swagger_to_dart
```

Correct workflow:

```bash
dart run swagger_to_dart
dart run build_runner build --delete-conflicting-outputs
```

---

## When to Re-run Code Generation

Re-run **both commands** if:

- The OpenAPI specification changes
- `swagger_to_dart.yaml` is updated
- Model annotations are modified

---

## Summary

1. Configure `swagger_to_dart.yaml`
2. Run `dart run swagger_to_dart`
3. Always run `dart run build_runner build --delete-conflicting-outputs`

Skipping the final step will result in missing implementations and build errors.
