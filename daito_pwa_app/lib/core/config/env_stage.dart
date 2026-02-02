/// Staging environment configuration
class EnvStage {
  /// PWA base URL (staging)
  static const String pwaBaseUrl = 'https://stg-pwa.example.com';

  /// Backend API base URL (staging)
  static const String apiBaseUrl = 'https://stg-api.example.com';

  /// Allowed PWA hosts for staging
  static const Set<String> allowedHosts = {
    'stg-pwa.example.com',
  };
}
