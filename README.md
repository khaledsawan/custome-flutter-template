# Flutter Clean Architecture Template

This repository provides a **production-ready Flutter Clean Architecture template** designed to be used for **any type of application**, supporting **mobile and web**.

The template focuses on:

- Scalability and maintainability
- Feature-based modular architecture
- Maximum use of code generation
- OpenAPI-first backend integration
- Clear and enforceable architectural rules
- Replaceable external libraries and services

---

## Core Principles

### 1. Clean Architecture

The project follows Clean Architecture with three layers:

- **Presentation**  
- **Domain**  
- **Data**  

Each layer has **clear responsibilities and dependency rules**, enforced through the architecture contract (`docs/architecture.md`).

---

### 2. OpenAPI-First Data Layer

- OpenAPI (Swagger) defines the source of truth for APIs.
- Generated API clients live in an **external Dart package**, imported via `pubspec.yaml`.
- Features consume generated code **only in the Data layer**.
- Generators are **idempotent**, safe to run multiple times, and only scaffold new code or stubs.

---

### 3. Replaceable Third-Party Libraries

- All external services are accessed **through abstractions**, allowing easy replacement without changing business logic.
- Examples:
  - Analytics
  - Crash reporting
  - Networking
  - Logging

---

### 4. Feature-Based Modular Structure

- Each feature is **isolated** and self-contained.

lib/features/<feature_name>/
├── presentation/
├── domain/
└── data/

- Features **do not directly depend** on other features.
- Communication occurs only via shared Core services or domain abstractions.

---

### 5. Testability by Design

The architecture supports:

- Unit testing for Domain and Data layers
- Widget testing for Presentation
- Integration testing for full user flows

---

## Folder Structure Overview

lib/
├── core/ # Shared abstractions & utilities
├── features/ # Feature modules
├── di/ # Dependency injection setup
├── route/ # Routing configuration (abstracted)
├── l10n/ # Localization files
├── app.dart
└── main.dart

> Note: Generated OpenAPI code lives outside the project as a separate package.

---

### Layers Overview

#### Presentation Layer

- Contains widgets, pages, state management scaffolds, and routing stubs
- Depends **only on Domain and Core**
- Can be scaffolded by generators, but **must not contain business logic or direct API calls**

#### Domain Layer

- Contains entities, use cases, and repository interfaces
- Must be **pure Dart**
- Cannot depend on Flutter, generated code, or third-party services
- Can be scaffolded by generators, but **existing logic is never overwritten**

#### Data Layer

- Implements repository interfaces
- Contains mappings from external models (DTO → Domain)
- Uses external OpenAPI-generated code
- Must not leak DTOs or external models outside Data

---

## State Management

- States follow a **shared base structure** (Initial → Loading → Loaded → Error)
- Ensures consistency across features and simplifies testing

---

## OpenAPI Workflow

1. Place Swagger file in your OpenAPI package.
2. Generate API client using your preferred code generator.
3. Import the package via `pubspec.yaml`.
4. Map generated models to domain entities as needed.

---

## Summary

This template enforces **strong architectural discipline** while remaining flexible:

- Features are isolated
- Domain layer is pure Dart
- Generators are idempotent
- OpenAPI clients live in an external package
- Third-party services are replaceable via abstractions

For strict rules and architectural governance, see: [`docs/architecture.md`](docs/architecture.md)
