// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_artist_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotifyArtistSearchResponse<T> _$SpotifyArtistSearchResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SpotifyArtistSearchResponse<T>(
      artists: SpotifyApiResponse<T>.fromJson(
          json['artists'] as Map<String, dynamic>, (value) => fromJsonT(value)),
    );
