# Flutter Template Architecture Contract

## Purpose

This document defines the **non-negotiable architectural rules** for the Flutter Clean Architecture Template.
It ensures **consistency, scalability, maintainability, and safe code generation** across all features and services.

All contributors, generated code, and features must comply with this contract.

---

## 1. Feature-Based Modular Structure

- Each feature is **fully isolated** under:
lib/features/<feature_name>/
├── presentation/
├── domain/
└── data/

- Features **must not directly import other features**.
- Communication between features occurs **only via shared core services or domain abstractions**.

---

## 2. Layer Rules

### 2.1 Domain Layer

- Contains:
  - Entities
  - Use cases
  - Repository interfaces
- Must be **pure Dart**:
  - No Flutter imports
  - No third-party libraries (e.g., Dio, Firebase, OpenAPI models)
- Can only depend on:
  - Core shared abstractions
- Cannot be modified by code generators beyond scaffolding stubs.

### 2.2 Presentation Layer

- Contains:
  - Widgets, Pages
  - State management scaffolds
  - Navigation stubs
- Can be scaffolded by generators
- **Must not directly access** Data layer or API clients
- Can only depend on Domain and Core

### 2.3 Data Layer

- Contains:
  - Repository implementations
  - Mappings from external models (DTO → Domain)
  - Remote / Local data sources
- Can import **external generated OpenAPI code**
- Implements Domain contracts
- Must **never expose external models outside the Data layer**

---

## 3. OpenAPI / Generated Code

- Generated OpenAPI code **lives in an external Dart package**, imported via `pubspec.yaml`.
- Features import generated code only in their **Data layer**.
- Generators must be **idempotent**:
  - Safe to run multiple times
  - Do not overwrite existing handwritten logic
- Generators may **scaffold Domain and Presentation** placeholders, but never overwrite business logic.

---

## 4. Dependency Rules

- **Dependencies flow inward only**:

Presentation → Domain → Data → External packages

- No backward references.
- Shared Core utilities can be imported anywhere.

---

## 5. Forbidden Practices

- No feature directly accessing another feature’s data
- No business logic in Data or Presentation
- No external models (DTOs) in Domain or Presentation
- Generators **cannot overwrite existing code**
- Hardcoding external services inside Domain or Presentation

---

## 6. Idempotent Generator Guidelines

- Can create new files / stubs
- Can update generated files if no custom logic exists
- Must never remove or modify manually written code
- Allows safe regeneration when API changes

---

## 7. Summary

- **Features are isolated**
- **Domain is pure Dart**
- **Generators are safe and controlled**
- **OpenAPI clients live outside the app**
- **Rules are enforceable and must be followed by all contributors**

This document is the **law of the land**.  
All PRs must comply with it.
