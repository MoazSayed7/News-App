// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BannersErrorImplCopyWith<$Res> {
  factory _$$BannersErrorImplCopyWith(
    _$BannersErrorImpl value,
    $Res Function(_$BannersErrorImpl) then,
  ) = __$$BannersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BannersErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannersErrorImpl>
    implements _$$BannersErrorImplCopyWith<$Res> {
  __$$BannersErrorImplCopyWithImpl(
    _$BannersErrorImpl _value,
    $Res Function(_$BannersErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BannersErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$BannersErrorImpl implements BannersError {
  const _$BannersErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.bannersError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersErrorImplCopyWith<_$BannersErrorImpl> get copyWith =>
      __$$BannersErrorImplCopyWithImpl<_$BannersErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
  }) {
    return bannersError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
  }) {
    return bannersError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersError != null) {
      return bannersError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
  }) {
    return bannersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
  }) {
    return bannersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersError != null) {
      return bannersError(this);
    }
    return orElse();
  }
}

abstract class BannersError implements HomeState {
  const factory BannersError(final String message) = _$BannersErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannersErrorImplCopyWith<_$BannersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BannersLoadingImplCopyWith<$Res> {
  factory _$$BannersLoadingImplCopyWith(
    _$BannersLoadingImpl value,
    $Res Function(_$BannersLoadingImpl) then,
  ) = __$$BannersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannersLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannersLoadingImpl>
    implements _$$BannersLoadingImplCopyWith<$Res> {
  __$$BannersLoadingImplCopyWithImpl(
    _$BannersLoadingImpl _value,
    $Res Function(_$BannersLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BannersLoadingImpl implements BannersLoading {
  const _$BannersLoadingImpl();

  @override
  String toString() {
    return 'HomeState.bannersLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
  }) {
    return bannersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
  }) {
    return bannersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersLoading != null) {
      return bannersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
  }) {
    return bannersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
  }) {
    return bannersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersLoading != null) {
      return bannersLoading(this);
    }
    return orElse();
  }
}

abstract class BannersLoading implements HomeState {
  const factory BannersLoading() = _$BannersLoadingImpl;
}

/// @nodoc
abstract class _$$BannersSuccessImplCopyWith<$Res> {
  factory _$$BannersSuccessImplCopyWith(
    _$BannersSuccessImpl value,
    $Res Function(_$BannersSuccessImpl) then,
  ) = __$$BannersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannerResponseModel response});
}

/// @nodoc
class __$$BannersSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$BannersSuccessImpl>
    implements _$$BannersSuccessImplCopyWith<$Res> {
  __$$BannersSuccessImplCopyWithImpl(
    _$BannersSuccessImpl _value,
    $Res Function(_$BannersSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$BannersSuccessImpl(
        null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                as BannerResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$BannersSuccessImpl implements BannersSuccess {
  const _$BannersSuccessImpl(this.response);

  @override
  final BannerResponseModel response;

  @override
  String toString() {
    return 'HomeState.bannersSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersSuccessImplCopyWith<_$BannersSuccessImpl> get copyWith =>
      __$$BannersSuccessImplCopyWithImpl<_$BannersSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
  }) {
    return bannersSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
  }) {
    return bannersSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersSuccess != null) {
      return bannersSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
  }) {
    return bannersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
  }) {
    return bannersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    required TResult orElse(),
  }) {
    if (bannersSuccess != null) {
      return bannersSuccess(this);
    }
    return orElse();
  }
}

abstract class BannersSuccess implements HomeState {
  const factory BannersSuccess(final BannerResponseModel response) =
      _$BannersSuccessImpl;

  BannerResponseModel get response;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannersSuccessImplCopyWith<_$BannersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
