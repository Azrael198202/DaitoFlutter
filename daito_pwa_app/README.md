# daito_pwa_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## requirements
    flutter_inappwebview: ^6.0.0
    permission_handler: ^11.3.1
    geolocator: ^11.1.0
    image_picker: ^1.1.2
    local_auth: ^2.2.0
    flutter_secure_storage: ^9.2.2
    uuid: ^4.5.1

## Flutter Command
    flutter clean
    flutter pub get

### Dev enviroment
    flutter run

### Stage
    flutter run --dart-define=APP_ENV=stage

### Prod
    flutter build apk --dart-define=APP_ENV=prod
    flutter build ios --dart-define=APP_ENV=prod
