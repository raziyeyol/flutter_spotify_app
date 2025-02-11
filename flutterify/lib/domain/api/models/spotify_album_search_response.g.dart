// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_album_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotifyAlbumSearchResponse<T> _$SpotifyAlbumSearchResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SpotifyAlbumSearchResponse<T>(
      albums: SpotifyApiResponse<T>.fromJson(
          json['albums'] as Map<String, dynamic>, (value) => fromJsonT(value)),
    );
