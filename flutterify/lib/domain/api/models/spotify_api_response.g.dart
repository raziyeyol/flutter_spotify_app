// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotifyApiResponse<T> _$SpotifyApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SpotifyApiResponse<T>._(
      href: json['href'] as String,
      limit: (json['limit'] as num).toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num).toInt(),
      previous: json['previous'] as String?,
      total: (json['total'] as num).toInt(),
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$SpotifyApiResponseToJson<T>(
  SpotifyApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'href': instance.href,
    'limit': instance.limit,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next', instance.next);
  val['offset'] = instance.offset;
  writeNotNull('previous', instance.previous);
  val['total'] = instance.total;
  val['items'] = instance.items.map(toJsonT).toList();
  return val;
}
