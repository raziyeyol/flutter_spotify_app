import 'package:json_annotation/json_annotation.dart';
import 'spotify_api_response.dart';

part 'spotify_album_search_response.g.dart';

/// Represents a response from the Spotify API when searching for albums
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class SpotifyAlbumSearchResponse<T> {
  const SpotifyAlbumSearchResponse({
    required this.albums,
  });

  factory SpotifyAlbumSearchResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SpotifyAlbumSearchResponseFromJson(json, fromJsonT);

  final SpotifyApiResponse<T> albums;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return <String, dynamic>{
      'albums': albums.toJson((value) => toJsonT(value) as Object),
    };
  }
}
