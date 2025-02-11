// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyImage _$SpotifyImageFromJson(Map<String, dynamic> json) {
  return _SpotifyImage.fromJson(json);
}

/// @nodoc
mixin _$SpotifyImage {
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyImageCopyWith<SpotifyImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyImageCopyWith<$Res> {
  factory $SpotifyImageCopyWith(
          SpotifyImage value, $Res Function(SpotifyImage) then) =
      _$SpotifyImageCopyWithImpl<$Res, SpotifyImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String url,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class _$SpotifyImageCopyWithImpl<$Res, $Val extends SpotifyImage>
    implements $SpotifyImageCopyWith<$Res> {
  _$SpotifyImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyImageImplCopyWith<$Res>
    implements $SpotifyImageCopyWith<$Res> {
  factory _$$SpotifyImageImplCopyWith(
          _$SpotifyImageImpl value, $Res Function(_$SpotifyImageImpl) then) =
      __$$SpotifyImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String url,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class __$$SpotifyImageImplCopyWithImpl<$Res>
    extends _$SpotifyImageCopyWithImpl<$Res, _$SpotifyImageImpl>
    implements _$$SpotifyImageImplCopyWith<$Res> {
  __$$SpotifyImageImplCopyWithImpl(
      _$SpotifyImageImpl _value, $Res Function(_$SpotifyImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$SpotifyImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SpotifyImageImpl implements _SpotifyImage {
  const _$SpotifyImageImpl(
      {@JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'width') this.width});

  factory _$SpotifyImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyImageImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'width')
  final int? width;

  @override
  String toString() {
    return 'SpotifyImage(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      __$$SpotifyImageImplCopyWithImpl<_$SpotifyImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyImageImplToJson(
      this,
    );
  }
}

abstract class _SpotifyImage implements SpotifyImage {
  const factory _SpotifyImage(
      {@JsonKey(name: 'url') required final String url,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'width') final int? width}) = _$SpotifyImageImpl;

  factory _SpotifyImage.fromJson(Map<String, dynamic> json) =
      _$SpotifyImageImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyImageImplCopyWith<_$SpotifyImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
