part of 'artists_cubit.dart';

@freezed
class ArtistsState with _$ArtistsState {
  const factory ArtistsState.initial() = _Initial;
  const factory ArtistsState.loading() = _Loading;
  const factory ArtistsState.loaded(
      SpotifyApiResponse<SpotifyArtist> artistsResponse) = _Loaded;
  const factory ArtistsState.error(String message) = _Error;
}
