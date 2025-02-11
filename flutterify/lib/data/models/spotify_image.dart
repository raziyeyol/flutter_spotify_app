import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_image.freezed.dart';
part 'spotify_image.g.dart';

// Represents an image from the Spotify API
@freezed
class SpotifyImage with _$SpotifyImage {
  @JsonSerializable(explicitToJson: true)
  const factory SpotifyImage({
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'width') int? width,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
