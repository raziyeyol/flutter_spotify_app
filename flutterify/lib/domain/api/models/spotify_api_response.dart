import 'package:json_annotation/json_annotation.dart';

part 'spotify_api_response.g.dart';

// Represents a response from the Spotify API
@JsonSerializable(genericArgumentFactories: true, constructor: '_')
class SpotifyApiResponse<T> {
  const SpotifyApiResponse._({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory SpotifyApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SpotifyApiResponseFromJson(json, fromJsonT);

  @JsonKey(name: 'href')
  final String href;

  @JsonKey(name: 'limit')
  final int limit;

  @JsonKey(name: 'next')
  final String? next;

  @JsonKey(name: 'offset')
  final int offset;

  @JsonKey(name: 'previous')
  final String? previous;

  @JsonKey(name: 'total')
  final int total;

  @JsonKey(name: 'items')
  final List<T> items;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SpotifyApiResponseToJson(this, (value) => toJsonT(value)!);
}
