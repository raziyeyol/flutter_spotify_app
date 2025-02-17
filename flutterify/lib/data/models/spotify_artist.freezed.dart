// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyArtist _$SpotifyArtistFromJson(Map<String, dynamic> json) {
  return _SpotifyArtist.fromJson(json);
}

/// @nodoc
mixin _$SpotifyArtist {
  @JsonKey(name: 'id')
  String get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<SpotifyImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyArtistCopyWith<SpotifyArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyArtistCopyWith<$Res> {
  factory $SpotifyArtistCopyWith(
          SpotifyArtist value, $Res Function(SpotifyArtist) then) =
      _$SpotifyArtistCopyWithImpl<$Res, SpotifyArtist>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String artistId,
      @JsonKey(name: 'name') String artistName,
      @JsonKey(name: 'images') List<SpotifyImage> images});
}

/// @nodoc
class _$SpotifyArtistCopyWithImpl<$Res, $Val extends SpotifyArtist>
    implements $SpotifyArtistCopyWith<$Res> {
  _$SpotifyArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? artistName = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyArtistImplCopyWith<$Res>
    implements $SpotifyArtistCopyWith<$Res> {
  factory _$$SpotifyArtistImplCopyWith(
          _$SpotifyArtistImpl value, $Res Function(_$SpotifyArtistImpl) then) =
      __$$SpotifyArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String artistId,
      @JsonKey(name: 'name') String artistName,
      @JsonKey(name: 'images') List<SpotifyImage> images});
}

/// @nodoc
class __$$SpotifyArtistImplCopyWithImpl<$Res>
    extends _$SpotifyArtistCopyWithImpl<$Res, _$SpotifyArtistImpl>
    implements _$$SpotifyArtistImplCopyWith<$Res> {
  __$$SpotifyArtistImplCopyWithImpl(
      _$SpotifyArtistImpl _value, $Res Function(_$SpotifyArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? artistName = null,
    Object? images = null,
  }) {
    return _then(_$SpotifyArtistImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SpotifyArtistImpl implements _SpotifyArtist {
  const _$SpotifyArtistImpl(
      {@JsonKey(name: 'id') required this.artistId,
      @JsonKey(name: 'name') required this.artistName,
      @JsonKey(name: 'images') final List<SpotifyImage> images = const []})
      : _images = images;

  factory _$SpotifyArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyArtistImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String artistId;
  @override
  @JsonKey(name: 'name')
  final String artistName;
  final List<SpotifyImage> _images;
  @override
  @JsonKey(name: 'images')
  List<SpotifyImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'SpotifyArtist(artistId: $artistId, artistName: $artistName, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyArtistImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artistId, artistName,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      __$$SpotifyArtistImplCopyWithImpl<_$SpotifyArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyArtistImplToJson(
      this,
    );
  }
}

abstract class _SpotifyArtist implements SpotifyArtist {
  const factory _SpotifyArtist(
          {@JsonKey(name: 'id') required final String artistId,
          @JsonKey(name: 'name') required final String artistName,
          @JsonKey(name: 'images') final List<SpotifyImage> images}) =
      _$SpotifyArtistImpl;

  factory _SpotifyArtist.fromJson(Map<String, dynamic> json) =
      _$SpotifyArtistImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get artistId;
  @override
  @JsonKey(name: 'name')
  String get artistName;
  @override
  @JsonKey(name: 'images')
  List<SpotifyImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
