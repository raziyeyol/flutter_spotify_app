import 'package:dio/dio.dart';
import 'dart:convert';

// This class is responsible for fetching the client credentials token
class AuthService {
  final String clientId;
  final String clientSecret;
  final Dio _dio;

  AuthService({
    required this.clientId,
    required this.clientSecret,
    Dio? dio,
  }) : _dio = dio ?? Dio();

  // This method fetches the client credentials token from the Spotify API
  Future<String> fetchClientCredentialsToken() async {
    final authHeader = base64Encode(utf8.encode('$clientId:$clientSecret'));

    final encodedData =
        'grant_type=${Uri.encodeComponent("client_credentials")}';

    print('--- [fetchClientCredentialsToken] Request ---');
    print('POST URL: https://accounts.spotify.com/api/token');
    print(
        'Headers: {"Authorization": "Basic $authHeader", "Content-Type": "application/x-www-form-urlencoded"}');
    print('Data: $encodedData');
    print('---------------------------------------------');

    // Send the request to the Spotify API
    final response = await _dio.post(
      'https://accounts.spotify.com/api/token',
      options: Options(
        headers: {
          'Authorization': 'Basic $authHeader',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: encodedData,
    );

    print('--- [fetchClientCredentialsToken] Response ---');
    print('Status Code: ${response.statusCode}');
    print('Response Data: ${response.data}');
    print('-----------------------------------------------');

    // If the response is successful, return the access token
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = response.data;
      return jsonResponse['access_token'] as String;
    } else {
      throw Exception(
        'Failed to fetch client credentials token. '
        'Status: ${response.statusCode}, Response: ${response.data}',
      );
    }
  }
}
