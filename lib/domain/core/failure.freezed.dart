// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _Empty<T> empty<T>({required T failedValue}) {
    return _Empty<T>(
      failedValue: failedValue,
    );
  }

  _InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _InvalidPassword<T> invalidPassword<T>({required T failedValue}) {
    return _InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  _Unexpected<T> unexpected<T>({required T failedValue}) {
    return _Unexpected<T>(
      failedValue: failedValue,
    );
  }

  _StrShortLength<T> strShortLength<T>({required T failedValue}) {
    return _StrShortLength<T>(
      failedValue: failedValue,
    );
  }

  _InvalidPhone<T> invalidPhone<T>({required T failedValue}) {
    return _InvalidPhone<T>(
      failedValue: failedValue,
    );
  }

  _InvalidSmsCode<T> invalidSmsCode<T>({required T failedValue}) {
    return _InvalidSmsCode<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required T failedValue}) = _$_Empty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({required T failedValue}) = _$_InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidPasswordCopyWith(
          _InvalidPassword<T> value, $Res Function(_InvalidPassword<T>) then) =
      __$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPasswordCopyWith<T, $Res> {
  __$InvalidPasswordCopyWithImpl(
      _InvalidPassword<T> _value, $Res Function(_InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPassword<T>));

  @override
  _InvalidPassword<T> get _value => super._value as _InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPassword<T> implements _InvalidPassword<T> {
  const _$_InvalidPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith =>
      __$InvalidPasswordCopyWithImpl<T, _InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword<T> implements ValueFailure<T> {
  const factory _InvalidPassword({required T failedValue}) =
      _$_InvalidPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidPasswordCopyWith<T, _InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_Unexpected<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.unexpected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      __$UnexpectedCopyWithImpl<T, _Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return unexpected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements ValueFailure<T> {
  const factory _Unexpected({required T failedValue}) = _$_Unexpected<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StrShortLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$StrShortLengthCopyWith(
          _StrShortLength<T> value, $Res Function(_StrShortLength<T>) then) =
      __$StrShortLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$StrShortLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$StrShortLengthCopyWith<T, $Res> {
  __$StrShortLengthCopyWithImpl(
      _StrShortLength<T> _value, $Res Function(_StrShortLength<T>) _then)
      : super(_value, (v) => _then(v as _StrShortLength<T>));

  @override
  _StrShortLength<T> get _value => super._value as _StrShortLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_StrShortLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_StrShortLength<T> implements _StrShortLength<T> {
  const _$_StrShortLength({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.strShortLength(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StrShortLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$StrShortLengthCopyWith<T, _StrShortLength<T>> get copyWith =>
      __$StrShortLengthCopyWithImpl<T, _StrShortLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return strShortLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (strShortLength != null) {
      return strShortLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return strShortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (strShortLength != null) {
      return strShortLength(this);
    }
    return orElse();
  }
}

abstract class _StrShortLength<T> implements ValueFailure<T> {
  const factory _StrShortLength({required T failedValue}) =
      _$_StrShortLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StrShortLengthCopyWith<T, _StrShortLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidPhoneCopyWith(
          _InvalidPhone<T> value, $Res Function(_InvalidPhone<T>) then) =
      __$InvalidPhoneCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidPhoneCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhoneCopyWith<T, $Res> {
  __$InvalidPhoneCopyWithImpl(
      _InvalidPhone<T> _value, $Res Function(_InvalidPhone<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhone<T>));

  @override
  _InvalidPhone<T> get _value => super._value as _InvalidPhone<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidPhone<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPhone<T> implements _InvalidPhone<T> {
  const _$_InvalidPhone({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhone<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneCopyWith<T, _InvalidPhone<T>> get copyWith =>
      __$InvalidPhoneCopyWithImpl<T, _InvalidPhone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhone<T> implements ValueFailure<T> {
  const factory _InvalidPhone({required T failedValue}) = _$_InvalidPhone<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidPhoneCopyWith<T, _InvalidPhone<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidSmsCodeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$InvalidSmsCodeCopyWith(
          _InvalidSmsCode<T> value, $Res Function(_InvalidSmsCode<T>) then) =
      __$InvalidSmsCodeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidSmsCodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidSmsCodeCopyWith<T, $Res> {
  __$InvalidSmsCodeCopyWithImpl(
      _InvalidSmsCode<T> _value, $Res Function(_InvalidSmsCode<T>) _then)
      : super(_value, (v) => _then(v as _InvalidSmsCode<T>));

  @override
  _InvalidSmsCode<T> get _value => super._value as _InvalidSmsCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidSmsCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidSmsCode<T> implements _InvalidSmsCode<T> {
  const _$_InvalidSmsCode({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidSmsCode(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidSmsCode<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  _$InvalidSmsCodeCopyWith<T, _InvalidSmsCode<T>> get copyWith =>
      __$InvalidSmsCodeCopyWithImpl<T, _InvalidSmsCode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) unexpected,
    required TResult Function(T failedValue) strShortLength,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) invalidSmsCode,
  }) {
    return invalidSmsCode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? unexpected,
    TResult Function(T failedValue)? strShortLength,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidSmsCode != null) {
      return invalidSmsCode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_InvalidPassword<T> value) invalidPassword,
    required TResult Function(_Unexpected<T> value) unexpected,
    required TResult Function(_StrShortLength<T> value) strShortLength,
    required TResult Function(_InvalidPhone<T> value) invalidPhone,
    required TResult Function(_InvalidSmsCode<T> value) invalidSmsCode,
  }) {
    return invalidSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_InvalidPassword<T> value)? invalidPassword,
    TResult Function(_Unexpected<T> value)? unexpected,
    TResult Function(_StrShortLength<T> value)? strShortLength,
    TResult Function(_InvalidPhone<T> value)? invalidPhone,
    TResult Function(_InvalidSmsCode<T> value)? invalidSmsCode,
    required TResult orElse(),
  }) {
    if (invalidSmsCode != null) {
      return invalidSmsCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidSmsCode<T> implements ValueFailure<T> {
  const factory _InvalidSmsCode({required T failedValue}) =
      _$_InvalidSmsCode<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidSmsCodeCopyWith<T, _InvalidSmsCode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
