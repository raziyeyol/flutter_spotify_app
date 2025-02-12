abstract class ApiConsts {
  static const String baseUrl = String.fromEnvironment('BASE_URL',
      defaultValue: 'https://api.spotify.com/v1');
  static const String clientId = String.fromEnvironment('CLIENT_ID');
  static const String clientSecret = String.fromEnvironment('CLIENT_SECRET');
}
