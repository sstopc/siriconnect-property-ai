# SiriConnect Architecture

## Architecture Style

Feature First

Clean Architecture

Repository Pattern

Riverpod State Management

---

## Folder Structure

lib/

app/

core/

features/

shared/

---

## Layers

Domain

Entities

Repositories

Use Cases

Data

Datasource

DTO

Mapper

Repository

Presentation

Pages

Widgets

Providers

States

Models

---

## State Management

Riverpod

Presentation depends on Providers.

Providers depend on Repository.

Repository depends on Datasource.

---

## Routing

GoRouter

AppRouter

PropertyRoutes

---

## Design System

AppColors

AppSpacing

AppRadius

AppSizes

Typography

---

## Principles

No business logic inside Pages.

Reusable Widgets.

Feature isolation.

Dependency inversion.

Provider-first architecture.

---

## Future Roadmap

Authentication

Backend API

Offline Database

AI Studio

CRM

Notifications

Analytics