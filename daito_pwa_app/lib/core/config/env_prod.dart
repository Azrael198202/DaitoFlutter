/// Production environment configuration
class EnvProd {
  /// PWA base URL (production)
  static const String pwaBaseUrl = 'https://pwa.example.com';

  /// Backend API base URL (production)
  static const String apiBaseUrl = 'https://api.example.com';

  /// Allowed PWA hosts for production
  /// Must be strictly limited for security reasons
  static const Set<String> allowedHosts = {
    'pwa.example.com',
  };
}
