// This class is responsible for managing the access token and expiry time

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenManager {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String _accessTokenKey = 'access_token';
  static const String _expiryKey = 'access_token_expiry';

  Future<String?> get validAccessToken async {
    final accessToken = await _storage.read(key: _accessTokenKey);
    final expiryString = await _storage.read(key: _expiryKey);

    if (accessToken == null || expiryString == null) return null;

    final expiry = DateTime.parse(expiryString);
    if (DateTime.now().isAfter(expiry)) {
      return null;
    }

    return accessToken;
  }

  Future<void> setTokenData({
    required String accessToken,
    required int expiresInSeconds,
  }) async {
    final expiry = DateTime.now().add(Duration(seconds: expiresInSeconds));

    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _expiryKey, value: expiry.toIso8601String());
  }

  Future<void> clearToken() async {
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _expiryKey);
  }
}
