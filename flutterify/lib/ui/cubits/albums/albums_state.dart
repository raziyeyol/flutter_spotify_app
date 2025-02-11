part of 'albums_cubit.dart';

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState.initial() = _Initial;
  const factory AlbumsState.loading() = _Loading;
  const factory AlbumsState.Loaded(
      SpotifyApiResponse<SpotifyAlbum> albumsResponse) = _Loaded;
  const factory AlbumsState.error(String message) = _Error;
}
