# Anime UI
A Flutter UI for an anime streaming app with three screens: home, show details and an upgrade plan page. The content comes from a local data source, so the app runs without a backend.

## Features
- Home screen with categories, a list of shows and a "Top Characters" section
- Show details screen with views, claps and seasons, a description and a bottom sheet with "Preview" and "Watch Now" buttons
- Upgrade plan screen where the user picks a monthly or annual plan
- Custom bottom navigation bar
- Named routes with a route generator
- Local data source, repository and domain models wired with get_it

## Tech stack
- Flutter, Dart
- Dependency injection: get_it
- SVG assets: flutter_svg

## Project structure
```
lib/
├── core/
│   ├── app_constants/          colors, text styles, strings, sizes and asset paths
│   ├── dependency_injection/   get_it setup
│   └── route/                  route generator
├── feature/
│   └── home/
│       ├── data/               local data source, response models and repository implementation
│       ├── domain/             domain models and repository interface
│       └── presentation/       home, details and upgrade plan screens with their widgets
└── main.dart
```

## Getting started
```
flutter pub get
flutter run
```
