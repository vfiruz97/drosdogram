// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'object_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BobjectFailureTearOff {
  const _$BobjectFailureTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _BadResponse badResponse(String? notice) {
    return _BadResponse(
      notice,
    );
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
const $BobjectFailure = _$BobjectFailureTearOff();

/// @nodoc
mixin _$BobjectFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String? notice) badResponse,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String? notice)? badResponse,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BobjectFailureCopyWith<$Res> {
  factory $BobjectFailureCopyWith(
          BobjectFailure value, $Res Function(BobjectFailure) then) =
      _$BobjectFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$BobjectFailureCopyWithImpl<$Res>
    implements $BobjectFailureCopyWith<$Res> {
  _$BobjectFailureCopyWithImpl(this._value, this._then);

  final BobjectFailure _value;
  // ignore: unused_field
  final $Res Function(BobjectFailure) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$BobjectFailureCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'BobjectFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String? notice) badResponse,
    required TResult Function() serverError,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String? notice)? badResponse,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_ServerError value) serverError,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements BobjectFailure {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$BadResponseCopyWith<$Res> {
  factory _$BadResponseCopyWith(
          _BadResponse value, $Res Function(_BadResponse) then) =
      __$BadResponseCopyWithImpl<$Res>;
  $Res call({String? notice});
}

/// @nodoc
class __$BadResponseCopyWithImpl<$Res>
    extends _$BobjectFailureCopyWithImpl<$Res>
    implements _$BadResponseCopyWith<$Res> {
  __$BadResponseCopyWithImpl(
      _BadResponse _value, $Res Function(_BadResponse) _then)
      : super(_value, (v) => _then(v as _BadResponse));

  @override
  _BadResponse get _value => super._value as _BadResponse;

  @override
  $Res call({
    Object? notice = freezed,
  }) {
    return _then(_BadResponse(
      notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BadResponse implements _BadResponse {
  const _$_BadResponse(this.notice);

  @override
  final String? notice;

  @override
  String toString() {
    return 'BobjectFailure.badResponse(notice: $notice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadResponse &&
            (identical(other.notice, notice) ||
                const DeepCollectionEquality().equals(other.notice, notice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notice);

  @JsonKey(ignore: true)
  @override
  _$BadResponseCopyWith<_BadResponse> get copyWith =>
      __$BadResponseCopyWithImpl<_BadResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String? notice) badResponse,
    required TResult Function() serverError,
  }) {
    return badResponse(notice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String? notice)? badResponse,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(notice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_ServerError value) serverError,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class _BadResponse implements BobjectFailure {
  const factory _BadResponse(String? notice) = _$_BadResponse;

  String? get notice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BadResponseCopyWith<_BadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$BobjectFailureCopyWithImpl<$Res>
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
    return 'BobjectFailure.serverError()';
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
    required TResult Function() empty,
    required TResult Function(String? notice) badResponse,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String? notice)? badResponse,
    TResult Function()? serverError,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements BobjectFailure {
  const factory _ServerError() = _$_ServerError;
}
