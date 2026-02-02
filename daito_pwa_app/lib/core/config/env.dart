import 'env_dev.dart';
import 'env_stage.dart';
import 'env_prod.dart';

/// enviroment 
enum AppEnvironment {
  dev,
  stage,
  prod,
}

/// Current environment name injected at compile time
/// Examples:
/// flutter run --dart-define=APP_ENV=dev
/// flutter build apk --dart-define=APP_ENV=prod
const String _envName =
    String.fromEnvironment('APP_ENV', defaultValue: 'dev');

/// Resolve current environment enum
AppEnvironment get currentEnv {
  switch (_envName) {
    case 'prod':
      return AppEnvironment.prod;
    case 'stage':
      return AppEnvironment.stage;
    case 'dev':
    default:
      return AppEnvironment.dev;
  }
}

/// Unified environment access point
/// All modules should read configuration from here
abstract class AppEnv {
  static AppEnvironment get env => currentEnv;

  /// Base URL of PWA loaded in WebView
  static String get pwaBaseUrl {
    switch (env) {
      case AppEnvironment.prod:
        return EnvProd.pwaBaseUrl;
      case AppEnvironment.stage:
        return EnvStage.pwaBaseUrl;
      case AppEnvironment.dev:
        return EnvDev.pwaBaseUrl;
    }
  }

   /// Base URL of backend API
  static String get apiBaseUrl {
    switch (env) {
      case AppEnvironment.prod:
        return EnvProd.apiBaseUrl;
      case AppEnvironment.stage:
        return EnvStage.apiBaseUrl;
      case AppEnvironment.dev:
        return EnvDev.apiBaseUrl;
    }
  }

  /// Allowed PWA host whitelist
  /// Used for WebView navigation guard and JS bridge origin validation）
  static Set<String> get allowedHosts {
    switch (env) {
      case AppEnvironment.prod:
        return EnvProd.allowedHosts;
      case AppEnvironment.stage:
        return EnvStage.allowedHosts;
      case AppEnvironment.dev:
        return EnvDev.allowedHosts;
    }
  }

  /// Environment label for logging / debug banner
  static String get envLabel {
    switch (env) {
      case AppEnvironment.prod:
        return 'PROD';
      case AppEnvironment.stage:
        return 'STAGE';
      case AppEnvironment.dev:
        return 'DEV';
    }
  }
}
