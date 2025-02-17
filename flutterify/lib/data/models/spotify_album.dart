import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/data/models/spotify_image.dart';

part 'spotify_album.freezed.dart';
part 'spotify_album.g.dart';

// Represents an album from the Spotify API
@freezed
class SpotifyAlbum with _$SpotifyAlbum {
  @JsonSerializable(explicitToJson: true)
  const factory SpotifyAlbum({
    @JsonKey(name: 'id') required String albumId,
    @JsonKey(name: 'name') required String albumName,
    @JsonKey(name: 'album_type') required String albumType,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'images') required List<SpotifyImage> images,
    @JsonKey(name: 'artists') required List<SpotifyArtist> artists,
  }) = _SpotifyAlbum;

  factory SpotifyAlbum.fromJson(Map<String, dynamic> json) =>
      _$SpotifyAlbumFromJson(json);
}
