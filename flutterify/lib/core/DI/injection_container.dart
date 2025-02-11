// injection_container.dart

import 'package:dio/dio.dart';
import 'package:flutterify/domain/api/api_consts.dart';
import 'package:flutterify/domain/api/dio/auth_interceptor.dart';
import 'package:flutterify/domain/api/dio/dio_factory.dart';
import 'package:flutterify/domain/api/dio/token_manager.dart';
import 'package:flutterify/domain/api/service/auth_service.dart';
import 'package:flutterify/domain/api/spotify_api.dart';
import 'package:flutterify/domain/repositories/spotify_repository.dart';
import 'package:flutterify/ui/cubits/albums/albums_cubit.dart';
import 'package:flutterify/ui/cubits/artists/artists_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // 1. Register TokenManager as a singleton.
  getIt.registerSingleton<TokenManager>(TokenManager());

  // 2. Register AuthService as a lazy singleton.
  getIt.registerLazySingleton<AuthService>(
    () => AuthService(
      clientId: ApiConsts.testClientId,
      clientSecret: ApiConsts.testClientSecret,
    ),
  );

  // 3. Register DioFactory.
  getIt.registerLazySingleton<DioFactory>(
    () => DioFactory(
      baseUrl: ApiConsts.baseUrl,
      spotifyAuthInterceptor: AuthInterceptor(
        getIt<AuthService>(),
        getIt<TokenManager>(),
        Dio(),
      ),
    ),
  );

  // 4. Use DioFactory to create and register the Dio instance.
  getIt.registerLazySingleton<Dio>(() => getIt<DioFactory>().create());

  // 5. Register SpotifyApi (Retrofit-generated) using the configured Dio instance.
  getIt.registerLazySingleton<SpotifyApi>(() => SpotifyApi(getIt<Dio>()));

  // 6. Register the repository.
  getIt.registerLazySingleton<SpotifyRepository>(
      () => SpotifyRepository(getIt<SpotifyApi>()));

  // 7. Register the Albums Cubit.
  getIt.registerFactory(
      () => AlbumsCubit(repository: getIt<SpotifyRepository>()));

  // 8. Register the Artists Cubit.
  getIt.registerFactory(
      () => ArtistsCubit(repository: getIt<SpotifyRepository>()));
}
