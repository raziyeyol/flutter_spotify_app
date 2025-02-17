// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyAlbum _$SpotifyAlbumFromJson(Map<String, dynamic> json) {
  return _SpotifyAlbum.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAlbum {
  @JsonKey(name: 'id')
  String get albumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get albumName => throw _privateConstructorUsedError;
  @JsonKey(name: 'album_type')
  String get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<SpotifyImage> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'artists')
  List<SpotifyArtist> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyAlbumCopyWith<SpotifyAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAlbumCopyWith<$Res> {
  factory $SpotifyAlbumCopyWith(
          SpotifyAlbum value, $Res Function(SpotifyAlbum) then) =
      _$SpotifyAlbumCopyWithImpl<$Res, SpotifyAlbum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String albumId,
      @JsonKey(name: 'name') String albumName,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'images') List<SpotifyImage> images,
      @JsonKey(name: 'artists') List<SpotifyArtist> artists});
}

/// @nodoc
class _$SpotifyAlbumCopyWithImpl<$Res, $Val extends SpotifyAlbum>
    implements $SpotifyAlbumCopyWith<$Res> {
  _$SpotifyAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? albumName = null,
    Object? albumType = null,
    Object? releaseDate = null,
    Object? images = null,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAlbumImplCopyWith<$Res>
    implements $SpotifyAlbumCopyWith<$Res> {
  factory _$$SpotifyAlbumImplCopyWith(
          _$SpotifyAlbumImpl value, $Res Function(_$SpotifyAlbumImpl) then) =
      __$$SpotifyAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String albumId,
      @JsonKey(name: 'name') String albumName,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'images') List<SpotifyImage> images,
      @JsonKey(name: 'artists') List<SpotifyArtist> artists});
}

/// @nodoc
class __$$SpotifyAlbumImplCopyWithImpl<$Res>
    extends _$SpotifyAlbumCopyWithImpl<$Res, _$SpotifyAlbumImpl>
    implements _$$SpotifyAlbumImplCopyWith<$Res> {
  __$$SpotifyAlbumImplCopyWithImpl(
      _$SpotifyAlbumImpl _value, $Res Function(_$SpotifyAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? albumName = null,
    Object? albumType = null,
    Object? releaseDate = null,
    Object? images = null,
    Object? artists = null,
  }) {
    return _then(_$SpotifyAlbumImpl(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SpotifyAlbumImpl implements _SpotifyAlbum {
  const _$SpotifyAlbumImpl(
      {@JsonKey(name: 'id') required this.albumId,
      @JsonKey(name: 'name') required this.albumName,
      @JsonKey(name: 'album_type') required this.albumType,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'images') required final List<SpotifyImage> images,
      @JsonKey(name: 'artists') required final List<SpotifyArtist> artists})
      : _images = images,
        _artists = artists;

  factory _$SpotifyAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAlbumImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String albumId;
  @override
  @JsonKey(name: 'name')
  final String albumName;
  @override
  @JsonKey(name: 'album_type')
  final String albumType;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final List<SpotifyImage> _images;
  @override
  @JsonKey(name: 'images')
  List<SpotifyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<SpotifyArtist> _artists;
  @override
  @JsonKey(name: 'artists')
  List<SpotifyArtist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'SpotifyAlbum(albumId: $albumId, albumName: $albumName, albumType: $albumType, releaseDate: $releaseDate, images: $images, artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAlbumImpl &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.albumName, albumName) ||
                other.albumName == albumName) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumId,
      albumName,
      albumType,
      releaseDate,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      __$$SpotifyAlbumImplCopyWithImpl<_$SpotifyAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAlbumImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAlbum implements SpotifyAlbum {
  const factory _SpotifyAlbum(
      {@JsonKey(name: 'id') required final String albumId,
      @JsonKey(name: 'name') required final String albumName,
      @JsonKey(name: 'album_type') required final String albumType,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'images') required final List<SpotifyImage> images,
      @JsonKey(name: 'artists')
      required final List<SpotifyArtist> artists}) = _$SpotifyAlbumImpl;

  factory _SpotifyAlbum.fromJson(Map<String, dynamic> json) =
      _$SpotifyAlbumImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get albumId;
  @override
  @JsonKey(name: 'name')
  String get albumName;
  @override
  @JsonKey(name: 'album_type')
  String get albumType;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'images')
  List<SpotifyImage> get images;
  @override
  @JsonKey(name: 'artists')
  List<SpotifyArtist> get artists;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
