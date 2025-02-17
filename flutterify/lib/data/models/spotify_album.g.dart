// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyAlbumImpl _$$SpotifyAlbumImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyAlbumImpl(
      albumId: json['id'] as String,
      albumName: json['name'] as String,
      albumType: json['album_type'] as String,
      releaseDate: json['release_date'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => SpotifyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotifyArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpotifyAlbumImplToJson(_$SpotifyAlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.albumId,
      'name': instance.albumName,
      'album_type': instance.albumType,
      'release_date': instance.releaseDate,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
    };
