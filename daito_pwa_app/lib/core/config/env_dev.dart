/// Development environment configuration
class EnvDev {
  /// PWA base URL (development)
  static const String pwaBaseUrl = 'https://dev-pwa.example.com';

  /// Backend API base URL (development)
  static const String apiBaseUrl = 'https://dev-api.example.com';

  /// Allowed PWA hosts for development
  /// Can be relatively permissive for local testing
  static const Set<String> allowedHosts = {
    'dev-pwa.example.com',
    'localhost',
    '10.0.2.2', // Android emulator localhost
  };
}
