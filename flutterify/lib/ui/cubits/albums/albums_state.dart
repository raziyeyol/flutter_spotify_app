part of 'albums_cubit.dart';

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState.initial() = AlbumsStateInitial;
  const factory AlbumsState.loading() = AlbumsStateLoading;
  const factory AlbumsState.loaded(SpotifyApiResponse<SpotifyAlbum> albums) =
      AlbumsStateLoaded;
  const factory AlbumsState.error(String message) = AlbumsStateError;
}
