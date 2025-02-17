// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'albums_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlbumsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyAlbum> albums) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumsStateInitial value) initial,
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumsStateInitial value)? initial,
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumsStateInitial value)? initial,
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsStateCopyWith<$Res> {
  factory $AlbumsStateCopyWith(
          AlbumsState value, $Res Function(AlbumsState) then) =
      _$AlbumsStateCopyWithImpl<$Res, AlbumsState>;
}

/// @nodoc
class _$AlbumsStateCopyWithImpl<$Res, $Val extends AlbumsState>
    implements $AlbumsStateCopyWith<$Res> {
  _$AlbumsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AlbumsStateInitialImplCopyWith<$Res> {
  factory _$$AlbumsStateInitialImplCopyWith(_$AlbumsStateInitialImpl value,
          $Res Function(_$AlbumsStateInitialImpl) then) =
      __$$AlbumsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumsStateInitialImplCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateInitialImpl>
    implements _$$AlbumsStateInitialImplCopyWith<$Res> {
  __$$AlbumsStateInitialImplCopyWithImpl(_$AlbumsStateInitialImpl _value,
      $Res Function(_$AlbumsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlbumsStateInitialImpl implements AlbumsStateInitial {
  const _$AlbumsStateInitialImpl();

  @override
  String toString() {
    return 'AlbumsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyAlbum> albums) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
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
    required TResult Function(AlbumsStateInitial value) initial,
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumsStateInitial value)? initial,
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumsStateInitial value)? initial,
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateInitial implements AlbumsState {
  const factory AlbumsStateInitial() = _$AlbumsStateInitialImpl;
}

/// @nodoc
abstract class _$$AlbumsStateLoadingImplCopyWith<$Res> {
  factory _$$AlbumsStateLoadingImplCopyWith(_$AlbumsStateLoadingImpl value,
          $Res Function(_$AlbumsStateLoadingImpl) then) =
      __$$AlbumsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumsStateLoadingImplCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateLoadingImpl>
    implements _$$AlbumsStateLoadingImplCopyWith<$Res> {
  __$$AlbumsStateLoadingImplCopyWithImpl(_$AlbumsStateLoadingImpl _value,
      $Res Function(_$AlbumsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlbumsStateLoadingImpl implements AlbumsStateLoading {
  const _$AlbumsStateLoadingImpl();

  @override
  String toString() {
    return 'AlbumsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyAlbum> albums) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
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
    required TResult Function(AlbumsStateInitial value) initial,
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumsStateInitial value)? initial,
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumsStateInitial value)? initial,
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateLoading implements AlbumsState {
  const factory AlbumsStateLoading() = _$AlbumsStateLoadingImpl;
}

/// @nodoc
abstract class _$$AlbumsStateLoadedImplCopyWith<$Res> {
  factory _$$AlbumsStateLoadedImplCopyWith(_$AlbumsStateLoadedImpl value,
          $Res Function(_$AlbumsStateLoadedImpl) then) =
      __$$AlbumsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpotifyApiResponse<SpotifyAlbum> albums});
}

/// @nodoc
class __$$AlbumsStateLoadedImplCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateLoadedImpl>
    implements _$$AlbumsStateLoadedImplCopyWith<$Res> {
  __$$AlbumsStateLoadedImplCopyWithImpl(_$AlbumsStateLoadedImpl _value,
      $Res Function(_$AlbumsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_$AlbumsStateLoadedImpl(
      null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as SpotifyApiResponse<SpotifyAlbum>,
    ));
  }
}

/// @nodoc

class _$AlbumsStateLoadedImpl implements AlbumsStateLoaded {
  const _$AlbumsStateLoadedImpl(this.albums);

  @override
  final SpotifyApiResponse<SpotifyAlbum> albums;

  @override
  String toString() {
    return 'AlbumsState.loaded(albums: $albums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsStateLoadedImpl &&
            (identical(other.albums, albums) || other.albums == albums));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albums);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsStateLoadedImplCopyWith<_$AlbumsStateLoadedImpl> get copyWith =>
      __$$AlbumsStateLoadedImplCopyWithImpl<_$AlbumsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyAlbum> albums) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(albums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumsStateInitial value) initial,
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumsStateInitial value)? initial,
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumsStateInitial value)? initial,
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateLoaded implements AlbumsState {
  const factory AlbumsStateLoaded(
      final SpotifyApiResponse<SpotifyAlbum> albums) = _$AlbumsStateLoadedImpl;

  SpotifyApiResponse<SpotifyAlbum> get albums;
  @JsonKey(ignore: true)
  _$$AlbumsStateLoadedImplCopyWith<_$AlbumsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumsStateErrorImplCopyWith<$Res> {
  factory _$$AlbumsStateErrorImplCopyWith(_$AlbumsStateErrorImpl value,
          $Res Function(_$AlbumsStateErrorImpl) then) =
      __$$AlbumsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AlbumsStateErrorImplCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateErrorImpl>
    implements _$$AlbumsStateErrorImplCopyWith<$Res> {
  __$$AlbumsStateErrorImplCopyWithImpl(_$AlbumsStateErrorImpl _value,
      $Res Function(_$AlbumsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AlbumsStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlbumsStateErrorImpl implements AlbumsStateError {
  const _$AlbumsStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AlbumsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsStateErrorImplCopyWith<_$AlbumsStateErrorImpl> get copyWith =>
      __$$AlbumsStateErrorImplCopyWithImpl<_$AlbumsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpotifyApiResponse<SpotifyAlbum> albums) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpotifyApiResponse<SpotifyAlbum> albums)? loaded,
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
    required TResult Function(AlbumsStateInitial value) initial,
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumsStateInitial value)? initial,
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumsStateInitial value)? initial,
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateError implements AlbumsState {
  const factory AlbumsStateError(final String message) = _$AlbumsStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AlbumsStateErrorImplCopyWith<_$AlbumsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
