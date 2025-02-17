part of 'artists_cubit.dart';

@freezed
class ArtistsState with _$ArtistsState {
  const factory ArtistsState.initial() = ArtistsStateInitial;
  const factory ArtistsState.loading() = ArtistsStateLoading;
  const factory ArtistsState.loaded(SpotifyApiResponse<SpotifyArtist> artists) =
      ArtistsStateLoaded;
  const factory ArtistsState.error(String message) = ArtistsStateError;
}
