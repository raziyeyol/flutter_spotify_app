// spotify_artist_search_response.dart
import 'package:json_annotation/json_annotation.dart';
import 'spotify_api_response.dart';

part 'spotify_artist_search_response.g.dart';

// Represents a response from the Spotify API when searching for artists
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class SpotifyArtistSearchResponse<T> {
  const SpotifyArtistSearchResponse({
    required this.artists,
  });

  factory SpotifyArtistSearchResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SpotifyArtistSearchResponseFromJson(json, fromJsonT);

  final SpotifyApiResponse<T> artists;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return <String, dynamic>{
      'artists': artists.toJson((value) => toJsonT(value) as Object),
    };
  }
}
