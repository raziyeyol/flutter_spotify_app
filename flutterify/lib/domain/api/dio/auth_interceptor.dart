import 'package:dio/dio.dart';
import 'package:flutterify/domain/api/dio/token_manager.dart';
import 'package:flutterify/domain/api/service/auth_service.dart';

// This class is responsible for intercepting requests and refreshing the token
class AuthInterceptor extends Interceptor {
  final AuthService _authService;
  final TokenManager _tokenManager;
  final Dio _dio;

  AuthInterceptor(
    this._authService,
    this._tokenManager,
    this._dio,
  );

  // This method is called before the request is sent
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      // Get the valid access token
      String? token = _tokenManager.validAccessToken;
      // If the token is null, refresh it
      token ??= await _performRefresh();
      if (token == null) {
        return handler.reject(
          DioException(
            requestOptions: options,
            error: 'No valid token available after refresh.',
          ),
        );
      }
      options.headers['Authorization'] = 'Bearer $token';
      handler.next(options);
    } catch (e) {
      handler.reject(
        DioException(
          requestOptions: options,
          error: 'Failed to obtain token: $e',
        ),
      );
    }
  }

  // This method is called when an error occurs
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // If the error is a 401, refresh the token and retry the request
    if (err.response?.statusCode == 401) {
      final originalRequest = err.requestOptions;
      final alreadyRetried = originalRequest.extra['alreadyRetried'] == true;
      if (alreadyRetried) {
        return handler.next(err);
      }
      try {
        // Refresh the token
        final newToken = await _performRefresh();
        if (newToken == null) {
          return handler.next(err);
        }
        // Retry the request with the new token
        final updatedHeaders =
            Map<String, dynamic>.from(originalRequest.headers);
        updatedHeaders['Authorization'] = 'Bearer $newToken';
        final clonedRequest = originalRequest.copyWith(
          headers: updatedHeaders,
          extra: {
            ...originalRequest.extra,
            'alreadyRetried': true,
          },
        );
        // Perform the request
        final response = await _dio.fetch(clonedRequest);
        return handler.resolve(response);
      } catch (_) {
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  // This method is called when a response is received
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  Future<String?> _performRefresh() async {
    try {
      // Fetch a new access token
      final newAccessToken = await _authService.fetchClientCredentialsToken();
      // Update the token manager with the new access token
      _tokenManager.setTokenData(
        accessToken: newAccessToken,
        expiresInSeconds: 3600,
      );
      return newAccessToken;
    } catch (e) {
      return null;
    }
  }
}
