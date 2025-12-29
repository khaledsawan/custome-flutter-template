# IDE AI Agent Instructions

This document defines strict rules for generating and maintaining the Flutter Clean Architecture Template project.  
All steps must be followed exactly to maintain architectural consistency.

---

## 1. Project Structure

Ensure the following directories exist:

- lib/core/
- lib/features/
- lib/di/
- lib/route/
- lib/l10n/

Ensure these files exist:

- lib/main.dart
- lib/app.dart

> Note: OpenAPI-generated code lives in an **external Dart package** and is imported via `pubspec.yaml`.

---

## 2. Feature Module Rules

For every new feature `FEATURE_NAME`:

Create:
\`\`\`
lib/features/FEATURE_NAME/
├── presentation/
├── domain/
└── data/
\`\`\`

Rules:

- **No cross-feature imports**
- Shared logic must live in `lib/core/`
- Generators may scaffold new files in Domain/Presentation but **must not overwrite existing handwritten code**

---

## 3. Domain Layer Rules

Domain layer must contain:

- Entities
- Uory interfaces

Restrictions:

- **Pure Dart only** (no Flutter, no OpenAPI clients, no Firebase, no Dio)
- Business logic only
- Generators may create scaffolding or stubs, but never overwrite existing logic

---

## 4. Data Layer Rules

Data layer responsibilities:

- Implement domain repositories
- Consume external OpenAPI-generated clients as primary API source
- Perform DTO → Domain mapping if needed
- Can depend on shared Core abstractions

Rules:

- Must **not leak external models** outside the Data layer
- Must be replaceable via DI

---

## 5. Presentation Layer Rules

Presentation layer contains:

- UI widgets
- State management scaffolds
- Navigation stubs

Rules:

- Depends **only on Domain and Core**
- Can be scaffolded by generators, but **must not contain business logic or direct API calls**
- No direct Data layer access

---

## 6. Dependency Injection

- Use a service locator (e.g., `get_it`)
- Register all dependencies via DI
- No direct instantiation inside widgets or use cases
- Generars may create registration stubs

> All services must be swappable by changing DI bindings only

---

## 7. Routing

- Abstracted and type-safe routing supported
- Can scaffold router stubs
- Implementation choice is flexible (e.g., auto_route, go_router)
- No hardcoded navigation logic in Domain or Data

---

## 8. Localization

- Support multiple locales (configurable)
- Use external JSON translation files
- Fallback locale defined
- No hardcoded strings in UI or Domain

---

## 9. Theming

- Light and dark theme support
- Centralized and reusable
- Platform-adaptive (Material / Cupertino optional)
- Implementation is flexible; scaffolds can be generated

---

## 10. Analytics & Crash Reporting

- Access all third-party services through **abstract interfaces**
- Implementation is swappable via DI
- No direct usage of any specific provider in Domain or Presentation
- Examples: Analytics, Crash Reporting, Logging

---

## 11. Testing Requirements

Required test types:

- Unit tests for Domain and Data
- Widget tests for Presentation
- Integration tests for critical flows

Mocks:

- Use `mocktail` or equivalent

---

## 12. Code Generation Rules

- Always use code generation when available
- Generators may scaffold Domain and Presentation **safely**
- Must never overwrite existing handwritten logic
- External OpenAPI package is the primary source of API code

Suggested generators:

- OpenAPI generator (external package)
- build_runner
- freezed / json_serializable (as needed)
- injectable

Run:
\`\`\`
flutter pub run build_runner build --delete-conflicting-outputs
\`\`\`

---

## 13. Replaceable Services Rule

For any third-party service:

1. Define interface in `core/`
2. Implement concrete class in Data or Core
3. Register via DI
4. Allow swapping by changing DI binding only

---

## FINAL RULE

1. Domain layer is **pure Dart**; no infrastructure code allowed.
2. Features are isolated; no cross-feature imports.
3. Generators may scaffold but **cannot overwrite existing handwritten logic**.
4. OpenAPI-generated code lives **outside the project**.
5. Any dependency on infrastructure must **never be in Domain**.
