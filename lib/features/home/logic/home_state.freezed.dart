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
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
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
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return bannersError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return bannersError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
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
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return bannersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return bannersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
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
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return bannersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return bannersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
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
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return bannersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return bannersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
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
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return bannersSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return bannersSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
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
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return bannersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return bannersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
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

/// @nodoc
abstract class _$$NewsErrorImplCopyWith<$Res> {
  factory _$$NewsErrorImplCopyWith(
    _$NewsErrorImpl value,
    $Res Function(_$NewsErrorImpl) then,
  ) = __$$NewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NewsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$NewsErrorImpl>
    implements _$$NewsErrorImplCopyWith<$Res> {
  __$$NewsErrorImplCopyWithImpl(
    _$NewsErrorImpl _value,
    $Res Function(_$NewsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NewsErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NewsErrorImpl implements NewsError {
  const _$NewsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.newsError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsErrorImplCopyWith<_$NewsErrorImpl> get copyWith =>
      __$$NewsErrorImplCopyWithImpl<_$NewsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return newsError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return newsError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (newsError != null) {
      return newsError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return newsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return newsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (newsError != null) {
      return newsError(this);
    }
    return orElse();
  }
}

abstract class NewsError implements HomeState {
  const factory NewsError(final String message) = _$NewsErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsErrorImplCopyWith<_$NewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsLoadingImplCopyWith<$Res> {
  factory _$$NewsLoadingImplCopyWith(
    _$NewsLoadingImpl value,
    $Res Function(_$NewsLoadingImpl) then,
  ) = __$$NewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$NewsLoadingImpl>
    implements _$$NewsLoadingImplCopyWith<$Res> {
  __$$NewsLoadingImplCopyWithImpl(
    _$NewsLoadingImpl _value,
    $Res Function(_$NewsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsLoadingImpl implements NewsLoading {
  const _$NewsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.newsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return newsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return newsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (newsLoading != null) {
      return newsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return newsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return newsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (newsLoading != null) {
      return newsLoading(this);
    }
    return orElse();
  }
}

abstract class NewsLoading implements HomeState {
  const factory NewsLoading() = _$NewsLoadingImpl;
}

/// @nodoc
abstract class _$$NewsSuccessImplCopyWith<$Res> {
  factory _$$NewsSuccessImplCopyWith(
    _$NewsSuccessImpl value,
    $Res Function(_$NewsSuccessImpl) then,
  ) = __$$NewsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsResponseModel response});
}

/// @nodoc
class __$$NewsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$NewsSuccessImpl>
    implements _$$NewsSuccessImplCopyWith<$Res> {
  __$$NewsSuccessImplCopyWithImpl(
    _$NewsSuccessImpl _value,
    $Res Function(_$NewsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$NewsSuccessImpl(
        null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                as NewsResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$NewsSuccessImpl implements NewsSuccess {
  const _$NewsSuccessImpl(this.response);

  @override
  final NewsResponseModel response;

  @override
  String toString() {
    return 'HomeState.newsSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSuccessImpl &&
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
  _$$NewsSuccessImplCopyWith<_$NewsSuccessImpl> get copyWith =>
      __$$NewsSuccessImplCopyWithImpl<_$NewsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return newsSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return newsSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (newsSuccess != null) {
      return newsSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return newsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return newsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (newsSuccess != null) {
      return newsSuccess(this);
    }
    return orElse();
  }
}

abstract class NewsSuccess implements HomeState {
  const factory NewsSuccess(final NewsResponseModel response) =
      _$NewsSuccessImpl;

  NewsResponseModel get response;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSuccessImplCopyWith<_$NewsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesErrorImplCopyWith<$Res> {
  factory _$$CategoriesErrorImplCopyWith(
    _$CategoriesErrorImpl value,
    $Res Function(_$CategoriesErrorImpl) then,
  ) = __$$CategoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CategoriesErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesErrorImpl>
    implements _$$CategoriesErrorImplCopyWith<$Res> {
  __$$CategoriesErrorImplCopyWithImpl(
    _$CategoriesErrorImpl _value,
    $Res Function(_$CategoriesErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CategoriesErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CategoriesErrorImpl implements CategoriesError {
  const _$CategoriesErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.categoriesError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      __$$CategoriesErrorImplCopyWithImpl<_$CategoriesErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return categoriesError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return categoriesError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return categoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return categoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError implements HomeState {
  const factory CategoriesError(final String message) = _$CategoriesErrorImpl;

  String get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<_$CategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesLoadingImplCopyWith<$Res> {
  factory _$$CategoriesLoadingImplCopyWith(
    _$CategoriesLoadingImpl value,
    $Res Function(_$CategoriesLoadingImpl) then,
  ) = __$$CategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesLoadingImpl>
    implements _$$CategoriesLoadingImplCopyWith<$Res> {
  __$$CategoriesLoadingImplCopyWithImpl(
    _$CategoriesLoadingImpl _value,
    $Res Function(_$CategoriesLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl implements CategoriesLoading {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'HomeState.categoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading implements HomeState {
  const factory CategoriesLoading() = _$CategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesSuccessImplCopyWith<$Res> {
  factory _$$CategoriesSuccessImplCopyWith(
    _$CategoriesSuccessImpl value,
    $Res Function(_$CategoriesSuccessImpl) then,
  ) = __$$CategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoriesResponseModel response});
}

/// @nodoc
class __$$CategoriesSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CategoriesSuccessImpl>
    implements _$$CategoriesSuccessImplCopyWith<$Res> {
  __$$CategoriesSuccessImplCopyWithImpl(
    _$CategoriesSuccessImpl _value,
    $Res Function(_$CategoriesSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$CategoriesSuccessImpl(
        null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                as CategoriesResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$CategoriesSuccessImpl implements CategoriesSuccess {
  const _$CategoriesSuccessImpl(this.response);

  @override
  final CategoriesResponseModel response;

  @override
  String toString() {
    return 'HomeState.categoriesSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesSuccessImpl &&
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
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      __$$CategoriesSuccessImplCopyWithImpl<_$CategoriesSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return categoriesSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return categoriesSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return categoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return categoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess implements HomeState {
  const factory CategoriesSuccess(final CategoriesResponseModel response) =
      _$CategoriesSuccessImpl;

  CategoriesResponseModel get response;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesSuccessImplCopyWith<_$CategoriesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String message) bannersError,
    required TResult Function() bannersLoading,
    required TResult Function(BannerResponseModel response) bannersSuccess,
    required TResult Function(String message) newsError,
    required TResult Function() newsLoading,
    required TResult Function(NewsResponseModel response) newsSuccess,
    required TResult Function(String message) categoriesError,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel response)
    categoriesSuccess,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? bannersError,
    TResult? Function()? bannersLoading,
    TResult? Function(BannerResponseModel response)? bannersSuccess,
    TResult? Function(String message)? newsError,
    TResult? Function()? newsLoading,
    TResult? Function(NewsResponseModel response)? newsSuccess,
    TResult? Function(String message)? categoriesError,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? bannersError,
    TResult Function()? bannersLoading,
    TResult Function(BannerResponseModel response)? bannersSuccess,
    TResult Function(String message)? newsError,
    TResult Function()? newsLoading,
    TResult Function(NewsResponseModel response)? newsSuccess,
    TResult Function(String message)? categoriesError,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel response)? categoriesSuccess,
    TResult Function()? initial,
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
    required TResult Function(BannersError value) bannersError,
    required TResult Function(BannersLoading value) bannersLoading,
    required TResult Function(BannersSuccess value) bannersSuccess,
    required TResult Function(NewsError value) newsError,
    required TResult Function(NewsLoading value) newsLoading,
    required TResult Function(NewsSuccess value) newsSuccess,
    required TResult Function(CategoriesError value) categoriesError,
    required TResult Function(CategoriesLoading value) categoriesLoading,
    required TResult Function(CategoriesSuccess value) categoriesSuccess,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BannersError value)? bannersError,
    TResult? Function(BannersLoading value)? bannersLoading,
    TResult? Function(BannersSuccess value)? bannersSuccess,
    TResult? Function(NewsError value)? newsError,
    TResult? Function(NewsLoading value)? newsLoading,
    TResult? Function(NewsSuccess value)? newsSuccess,
    TResult? Function(CategoriesError value)? categoriesError,
    TResult? Function(CategoriesLoading value)? categoriesLoading,
    TResult? Function(CategoriesSuccess value)? categoriesSuccess,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BannersError value)? bannersError,
    TResult Function(BannersLoading value)? bannersLoading,
    TResult Function(BannersSuccess value)? bannersSuccess,
    TResult Function(NewsError value)? newsError,
    TResult Function(NewsLoading value)? newsLoading,
    TResult Function(NewsSuccess value)? newsSuccess,
    TResult Function(CategoriesError value)? categoriesError,
    TResult Function(CategoriesLoading value)? categoriesLoading,
    TResult Function(CategoriesSuccess value)? categoriesSuccess,
    TResult Function(_Initial value)? initial,
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
