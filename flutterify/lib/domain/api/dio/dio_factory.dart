import 'package:dio/dio.dart';
import 'package:flutterify/domain/api/dio/auth_interceptor.dart';

// This class is responsible for creating a Dio instance with the necessary
class DioFactory {
  final String baseUrl;
  final AuthInterceptor spotifyAuthInterceptor;

  DioFactory({
    required this.baseUrl,
    required this.spotifyAuthInterceptor,
  });

  // Create a Dio instance with the base URL and the Spotify auth interceptor
  Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.add(spotifyAuthInterceptor);
    return dio;
  }
}
