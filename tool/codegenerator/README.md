# OpenAPI Feature Generator Tool

A Dart CLI tool that automatically generates Clean Architecture feature modules from OpenAPI API files.

## Overview

This tool scans the `openapi/lib/src/api/` directory for all `*_api.dart` files and generates complete Clean Architecture feature structures in `lib/features/{feature}/` with:

- **Data Layer**: Remote data sources and repository implementations
- **Domain Layer**: Repository interfaces and use cases (one per API method)
- **Presentation Layer**: Stub files for GetX bindings

## Usage

### Basic Usage

From the project root:

```bash
dart tool/codegenerator/bin/generate_features.dart
```

### With Configuration File

```bash
dart tool/codegenerator/bin/generate_features.dart --config tool/codegenerator/config.yaml
# or using short form:
dart tool/codegenerator/bin/generate_features.dart -c config.yaml
```

If no config file is provided, the tool looks for `tool/codegenerator/config.yaml` by default. If the file doesn't exist, it uses default settings.

## Configuration

The tool can be configured via a YAML file to control which features and folders are generated, and how files are modified.

### Configuration File Structure

Create a `config.yaml` file (see `config.yaml.example` for a template):

```yaml
# Feature selection
features:
  # Optional: explicitly include only these features (overrides exclude if both present)
  include:
    - pet
    - store
    - user
  
  # Optional: exclude these features from generation
  exclude:
    - audit_log
    - hangfire

# Folder/layer selection - control which parts to generate
folders:
  data:
    sources: true          # Generate remote data source
    implements: true       # Generate repository implementation
  domain:
    repositories: true     # Generate repository interface
    usecases: true         # Generate use cases
  presentation:
    getX: true             # Generate presentation stubs

# File modification behavior
file_mode: modify          # Options: 'modify' (use markers) or 'overwrite' (regenerate)
```

### Feature Filtering

- **`include`**: If specified (and not empty), only features in this list will be generated. Takes precedence over `exclude`.
- **`exclude`**: Features in this list will be skipped during generation.
- If neither is specified, all features are generated.

### Folder Filtering

Control which layers/folders are generated:

- `data.sources`: Remote data source files
- `data.implements`: Repository implementation files
- `domain.repositories`: Repository interface files
- `domain.usecases`: Use case files
- `presentation.getX`: Presentation stub files

### File Modification Mode

- **`modify`** (default): Generated code is wrapped in markers. Manual code outside markers is preserved. Generated sections can be updated without losing manual additions.
- **`overwrite`**: Files are completely regenerated each time, overwriting any manual changes.

### Code Markers

When using `file_mode: modify`, generated code is wrapped with markers like:

```dart
// GENERATED START - pet - repository_interface
// This section is auto-generated. Do not edit manually.

abstract class PetRepository {
  // ... generated methods
}

// GENERATED END - pet - repository_interface
```

You can add manual code before or after these markers, and it will be preserved during regeneration.

## What It Generates

For each API file (e.g., `PetApi`, `StoreApi`, `UserApi`), the tool creates:

### Data Layer

- `data/sources/{feature}_remote_data_source.dart` - Extends the OpenAPI API class
- `data/implements/{feature}_repository_imp.dart` - Implements the repository interface

### Domain Layer

- `domain/repositories/{feature}_repository.dart` - Abstract repository interface
- `domain/usecases/{action}_{feature}_usecase.dart` - One use case per API method

### Presentation Layer

- `presentation/getX/{feature}_binding.dart` - GetX binding stub
- `presentation/getX/{feature}.dart` - Library export file

## Features

- ✅ Automatically discovers all API files
- ✅ Parses method signatures and extracts parameters
- ✅ Filters out Dio-specific parameters (CancelToken, headers, etc.)
- ✅ Handles special return types (BuiltList, BuiltMap, void)
- ✅ Generates use cases with correct parameter mapping
- ✅ Follows Clean Architecture principles
- ✅ Configurable feature and folder selection
- ✅ Smart file modification with code markers
- ✅ Preserves manual code when using modify mode

## Examples

### Generate All Features Except Specific Ones

```yaml
features:
  exclude:
    - audit_log
    - hangfire
folders:
  data:
    sources: true
    implements: true
  domain:
    repositories: true
    usecases: true
  presentation:
    getX: false
file_mode: modify
```

### Generate Only Specific Features

```yaml
features:
  include:
    - pet
    - store
folders:
  data:
    sources: true
    implements: true
  domain:
    repositories: true
    usecases: true
  presentation:
    getX: true
file_mode: modify
```

### Generate Only Data Layer

```yaml
folders:
  data:
    sources: true
    implements: true
  domain:
    repositories: false
    usecases: false
  presentation:
    getX: false
file_mode: modify
```

For `PetApi` with methods like `getPetById`, `addPet`, etc., the tool generates:

- `GetPetByIdUseCase`
- `AddPetUseCase`
- ... and so on for all API methods

## Requirements

- Dart SDK ^3.10.1
- Dependencies: `args`, `path`, `yaml`
