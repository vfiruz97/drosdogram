// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileFailureTearOff {
  const _$ProfileFailureTearOff();

  _InvalidToken invalidToken() {
    return const _InvalidToken();
  }

  _ResponseError responseError(String? notice) {
    return _ResponseError(
      notice,
    );
  }
}

/// @nodoc
const $ProfileFailure = _$ProfileFailureTearOff();

/// @nodoc
mixin _$ProfileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidToken,
    required TResult Function(String? notice) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidToken,
    TResult Function(String? notice)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_ResponseError value) responseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  final ProfileFailure _value;
  // ignore: unused_field
  final $Res Function(ProfileFailure) _then;
}

/// @nodoc
abstract class _$InvalidTokenCopyWith<$Res> {
  factory _$InvalidTokenCopyWith(
          _InvalidToken value, $Res Function(_InvalidToken) then) =
      __$InvalidTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidTokenCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements _$InvalidTokenCopyWith<$Res> {
  __$InvalidTokenCopyWithImpl(
      _InvalidToken _value, $Res Function(_InvalidToken) _then)
      : super(_value, (v) => _then(v as _InvalidToken));

  @override
  _InvalidToken get _value => super._value as _InvalidToken;
}

/// @nodoc

class _$_InvalidToken implements _InvalidToken {
  const _$_InvalidToken();

  @override
  String toString() {
    return 'ProfileFailure.invalidToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidToken,
    required TResult Function(String? notice) responseError,
  }) {
    return invalidToken();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidToken,
    TResult Function(String? notice)? responseError,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class _InvalidToken implements ProfileFailure {
  const factory _InvalidToken() = _$_InvalidToken;
}

/// @nodoc
abstract class _$ResponseErrorCopyWith<$Res> {
  factory _$ResponseErrorCopyWith(
          _ResponseError value, $Res Function(_ResponseError) then) =
      __$ResponseErrorCopyWithImpl<$Res>;
  $Res call({String? notice});
}

/// @nodoc
class __$ResponseErrorCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements _$ResponseErrorCopyWith<$Res> {
  __$ResponseErrorCopyWithImpl(
      _ResponseError _value, $Res Function(_ResponseError) _then)
      : super(_value, (v) => _then(v as _ResponseError));

  @override
  _ResponseError get _value => super._value as _ResponseError;

  @override
  $Res call({
    Object? notice = freezed,
  }) {
    return _then(_ResponseError(
      notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ResponseError implements _ResponseError {
  const _$_ResponseError(this.notice);

  @override
  final String? notice;

  @override
  String toString() {
    return 'ProfileFailure.responseError(notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseError &&
            (identical(other.notice, notice) ||
                const DeepCollectionEquality().equals(other.notice, notice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notice);

  @JsonKey(ignore: true)
  @override
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      __$ResponseErrorCopyWithImpl<_ResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidToken,
    required TResult Function(String? notice) responseError,
  }) {
    return responseError(notice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidToken,
    TResult Function(String? notice)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(notice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidToken value) invalidToken,
    required TResult Function(_ResponseError value) responseError,
  }) {
    return responseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidToken value)? invalidToken,
    TResult Function(_ResponseError value)? responseError,
    required TResult orElse(),
  }) {
    if (responseError != null) {
      return responseError(this);
    }
    return orElse();
  }
}

abstract class _ResponseError implements ProfileFailure {
  const factory _ResponseError(String? notice) = _$_ResponseError;

  String? get notice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
