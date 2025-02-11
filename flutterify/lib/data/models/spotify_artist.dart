import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutterify/data/models/spotify_image.dart';

part 'spotify_artist.freezed.dart';
part 'spotify_artist.g.dart';

// Represents an artist from the Spotify API
@freezed
class SpotifyArtist with _$SpotifyArtist {
  @JsonSerializable(explicitToJson: true)
  const factory SpotifyArtist({
    @JsonKey(name: 'id') required String artistId,
    @JsonKey(name: 'name') required String artistName,
    @JsonKey(name: 'images') @Default([]) List<SpotifyImage> images,
  }) = _SpotifyArtist;

  factory SpotifyArtist.fromJson(Map<String, dynamic> json) =>
      _$SpotifyArtistFromJson(json);
}
