# OpenAPI Feature Generator Tool

A Dart CLI tool that automatically generates Clean Architecture feature modules from OpenAPI API files.

## Overview

This tool scans the `openapi/lib/src/api/` directory for all `*_api.dart` files and generates complete Clean Architecture feature structures in `lib/features/{feature}/` with:

- **Data Layer**: Remote data sources and repository implementations
- **Domain Layer**: Repository interfaces and use cases (one per API method)
- **Presentation Layer**: Stub files for GetX bindings

## Usage

From the project root:

```bash
dart tool/bin/generate_features.dart
```

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

## Example

For `PetApi` with methods like `getPetById`, `addPet`, etc., the tool generates:

- `GetPetByIdUseCase` 
- `AddPetUseCase`
- ... and so on for all API methods

## Requirements

- Dart SDK ^3.10.1
- Dependencies: `args`, `path`

