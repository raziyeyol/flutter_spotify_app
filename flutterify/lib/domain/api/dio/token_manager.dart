// This class is responsible for managing the access token and expiry time
class TokenManager {
  String? _accessToken;
  DateTime? _accessTokenExpiry;

  String? get validAccessToken {
    // Check if either the token or expiry is null
    if (_accessToken == null || _accessTokenExpiry == null) return null;
    // If the current time is past the expiry, the token is no longer valid
    if (DateTime.now().isAfter(_accessTokenExpiry!)) {
      return null;
    }

    // Return the valid access token
    return _accessToken;
  }

  // Updates the token data with a new access token and expiry
  void setTokenData({
    required String accessToken,
    required int expiresInSeconds,
  }) {
    _accessToken = accessToken;
    _accessTokenExpiry =
        DateTime.now().add(Duration(seconds: expiresInSeconds));
  }
}
