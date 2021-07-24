// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _ServerError serverError() {
    return const _ServerError();
  }

  _InvalidResonse invalidResonse({required String notice}) {
    return _InvalidResonse(
      notice: notice,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String notice) invalidResonse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String notice)? invalidResonse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidResonse value) invalidResonse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidResonse value)? invalidResonse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String notice) invalidResonse,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String notice)? invalidResonse,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidResonse value) invalidResonse,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidResonse value)? invalidResonse,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$InvalidResonseCopyWith<$Res> {
  factory _$InvalidResonseCopyWith(
          _InvalidResonse value, $Res Function(_InvalidResonse) then) =
      __$InvalidResonseCopyWithImpl<$Res>;
  $Res call({String notice});
}

/// @nodoc
class __$InvalidResonseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidResonseCopyWith<$Res> {
  __$InvalidResonseCopyWithImpl(
      _InvalidResonse _value, $Res Function(_InvalidResonse) _then)
      : super(_value, (v) => _then(v as _InvalidResonse));

  @override
  _InvalidResonse get _value => super._value as _InvalidResonse;

  @override
  $Res call({
    Object? notice = freezed,
  }) {
    return _then(_InvalidResonse(
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidResonse implements _InvalidResonse {
  const _$_InvalidResonse({required this.notice});

  @override
  final String notice;

  @override
  String toString() {
    return 'AuthFailure.invalidResonse(notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidResonse &&
            (identical(other.notice, notice) ||
                const DeepCollectionEquality().equals(other.notice, notice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notice);

  @JsonKey(ignore: true)
  @override
  _$InvalidResonseCopyWith<_InvalidResonse> get copyWith =>
      __$InvalidResonseCopyWithImpl<_InvalidResonse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function(String notice) invalidResonse,
  }) {
    return invalidResonse(notice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function(String notice)? invalidResonse,
    required TResult orElse(),
  }) {
    if (invalidResonse != null) {
      return invalidResonse(notice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidResonse value) invalidResonse,
  }) {
    return invalidResonse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidResonse value)? invalidResonse,
    required TResult orElse(),
  }) {
    if (invalidResonse != null) {
      return invalidResonse(this);
    }
    return orElse();
  }
}

abstract class _InvalidResonse implements AuthFailure {
  const factory _InvalidResonse({required String notice}) = _$_InvalidResonse;

  String get notice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidResonseCopyWith<_InvalidResonse> get copyWith =>
      throw _privateConstructorUsedError;
}
