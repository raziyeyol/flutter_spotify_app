// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyArtist> artists) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsStateInitial value) initial,
    required TResult Function(ArtistsStateLoading value) loading,
    required TResult Function(ArtistsStateLoaded value) loaded,
    required TResult Function(ArtistsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsStateInitial value)? initial,
    TResult? Function(ArtistsStateLoading value)? loading,
    TResult? Function(ArtistsStateLoaded value)? loaded,
    TResult? Function(ArtistsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsStateInitial value)? initial,
    TResult Function(ArtistsStateLoading value)? loading,
    TResult Function(ArtistsStateLoaded value)? loaded,
    TResult Function(ArtistsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsStateCopyWith<$Res> {
  factory $ArtistsStateCopyWith(
          ArtistsState value, $Res Function(ArtistsState) then) =
      _$ArtistsStateCopyWithImpl<$Res, ArtistsState>;
}

/// @nodoc
class _$ArtistsStateCopyWithImpl<$Res, $Val extends ArtistsState>
    implements $ArtistsStateCopyWith<$Res> {
  _$ArtistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ArtistsStateInitialImplCopyWith<$Res> {
  factory _$$ArtistsStateInitialImplCopyWith(_$ArtistsStateInitialImpl value,
          $Res Function(_$ArtistsStateInitialImpl) then) =
      __$$ArtistsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistsStateInitialImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateInitialImpl>
    implements _$$ArtistsStateInitialImplCopyWith<$Res> {
  __$$ArtistsStateInitialImplCopyWithImpl(_$ArtistsStateInitialImpl _value,
      $Res Function(_$ArtistsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistsStateInitialImpl implements ArtistsStateInitial {
  const _$ArtistsStateInitialImpl();

  @override
  String toString() {
    return 'ArtistsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyArtist> artists) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsStateInitial value) initial,
    required TResult Function(ArtistsStateLoading value) loading,
    required TResult Function(ArtistsStateLoaded value) loaded,
    required TResult Function(ArtistsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsStateInitial value)? initial,
    TResult? Function(ArtistsStateLoading value)? loading,
    TResult? Function(ArtistsStateLoaded value)? loaded,
    TResult? Function(ArtistsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsStateInitial value)? initial,
    TResult Function(ArtistsStateLoading value)? loading,
    TResult Function(ArtistsStateLoaded value)? loaded,
    TResult Function(ArtistsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ArtistsStateInitial implements ArtistsState {
  const factory ArtistsStateInitial() = _$ArtistsStateInitialImpl;
}

/// @nodoc
abstract class _$$ArtistsStateLoadingImplCopyWith<$Res> {
  factory _$$ArtistsStateLoadingImplCopyWith(_$ArtistsStateLoadingImpl value,
          $Res Function(_$ArtistsStateLoadingImpl) then) =
      __$$ArtistsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArtistsStateLoadingImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateLoadingImpl>
    implements _$$ArtistsStateLoadingImplCopyWith<$Res> {
  __$$ArtistsStateLoadingImplCopyWithImpl(_$ArtistsStateLoadingImpl _value,
      $Res Function(_$ArtistsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArtistsStateLoadingImpl implements ArtistsStateLoading {
  const _$ArtistsStateLoadingImpl();

  @override
  String toString() {
    return 'ArtistsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyArtist> artists) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsStateInitial value) initial,
    required TResult Function(ArtistsStateLoading value) loading,
    required TResult Function(ArtistsStateLoaded value) loaded,
    required TResult Function(ArtistsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsStateInitial value)? initial,
    TResult? Function(ArtistsStateLoading value)? loading,
    TResult? Function(ArtistsStateLoaded value)? loaded,
    TResult? Function(ArtistsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsStateInitial value)? initial,
    TResult Function(ArtistsStateLoading value)? loading,
    TResult Function(ArtistsStateLoaded value)? loaded,
    TResult Function(ArtistsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ArtistsStateLoading implements ArtistsState {
  const factory ArtistsStateLoading() = _$ArtistsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ArtistsStateLoadedImplCopyWith<$Res> {
  factory _$$ArtistsStateLoadedImplCopyWith(_$ArtistsStateLoadedImpl value,
          $Res Function(_$ArtistsStateLoadedImpl) then) =
      __$$ArtistsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotifyApiResponse<SpotifyArtist> artists});
}

/// @nodoc
class __$$ArtistsStateLoadedImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateLoadedImpl>
    implements _$$ArtistsStateLoadedImplCopyWith<$Res> {
  __$$ArtistsStateLoadedImplCopyWithImpl(_$ArtistsStateLoadedImpl _value,
      $Res Function(_$ArtistsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$ArtistsStateLoadedImpl(
      null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as SpotifyApiResponse<SpotifyArtist>,
    ));
  }
}

/// @nodoc

class _$ArtistsStateLoadedImpl implements ArtistsStateLoaded {
  const _$ArtistsStateLoadedImpl(this.artists);

  @override
  final SpotifyApiResponse<SpotifyArtist> artists;

  @override
  String toString() {
    return 'ArtistsState.loaded(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateLoadedImpl &&
            (identical(other.artists, artists) || other.artists == artists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsStateLoadedImplCopyWith<_$ArtistsStateLoadedImpl> get copyWith =>
      __$$ArtistsStateLoadedImplCopyWithImpl<_$ArtistsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyArtist> artists) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsStateInitial value) initial,
    required TResult Function(ArtistsStateLoading value) loading,
    required TResult Function(ArtistsStateLoaded value) loaded,
    required TResult Function(ArtistsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsStateInitial value)? initial,
    TResult? Function(ArtistsStateLoading value)? loading,
    TResult? Function(ArtistsStateLoaded value)? loaded,
    TResult? Function(ArtistsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsStateInitial value)? initial,
    TResult Function(ArtistsStateLoading value)? loading,
    TResult Function(ArtistsStateLoaded value)? loaded,
    TResult Function(ArtistsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ArtistsStateLoaded implements ArtistsState {
  const factory ArtistsStateLoaded(
          final SpotifyApiResponse<SpotifyArtist> artists) =
      _$ArtistsStateLoadedImpl;

  SpotifyApiResponse<SpotifyArtist> get artists;
  @JsonKey(ignore: true)
  _$$ArtistsStateLoadedImplCopyWith<_$ArtistsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArtistsStateErrorImplCopyWith<$Res> {
  factory _$$ArtistsStateErrorImplCopyWith(_$ArtistsStateErrorImpl value,
          $Res Function(_$ArtistsStateErrorImpl) then) =
      __$$ArtistsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ArtistsStateErrorImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateErrorImpl>
    implements _$$ArtistsStateErrorImplCopyWith<$Res> {
  __$$ArtistsStateErrorImplCopyWithImpl(_$ArtistsStateErrorImpl _value,
      $Res Function(_$ArtistsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ArtistsStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistsStateErrorImpl implements ArtistsStateError {
  const _$ArtistsStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsStateErrorImplCopyWith<_$ArtistsStateErrorImpl> get copyWith =>
      __$$ArtistsStateErrorImplCopyWithImpl<_$ArtistsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyArtist> artists) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyArtist> artists)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArtistsStateInitial value) initial,
    required TResult Function(ArtistsStateLoading value) loading,
    required TResult Function(ArtistsStateLoaded value) loaded,
    required TResult Function(ArtistsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ArtistsStateInitial value)? initial,
    TResult? Function(ArtistsStateLoading value)? loading,
    TResult? Function(ArtistsStateLoaded value)? loaded,
    TResult? Function(ArtistsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArtistsStateInitial value)? initial,
    TResult Function(ArtistsStateLoading value)? loading,
    TResult Function(ArtistsStateLoaded value)? loaded,
    TResult Function(ArtistsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ArtistsStateError implements ArtistsState {
  const factory ArtistsStateError(final String message) =
      _$ArtistsStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ArtistsStateErrorImplCopyWith<_$ArtistsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
