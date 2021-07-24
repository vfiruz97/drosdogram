// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'password_recovery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordRecoveryEventTearOff {
  const _$PasswordRecoveryEventTearOff();

  _ChangedPhone changedPhone(String phoneStr) {
    return _ChangedPhone(
      phoneStr,
    );
  }

  _SubmitSmsCode submitSmsCode() {
    return const _SubmitSmsCode();
  }
}

/// @nodoc
const $PasswordRecoveryEvent = _$PasswordRecoveryEventTearOff();

/// @nodoc
mixin _$PasswordRecoveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) changedPhone,
    required TResult Function() submitSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? changedPhone,
    TResult Function()? submitSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedPhone value) changedPhone,
    required TResult Function(_SubmitSmsCode value) submitSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedPhone value)? changedPhone,
    TResult Function(_SubmitSmsCode value)? submitSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRecoveryEventCopyWith<$Res> {
  factory $PasswordRecoveryEventCopyWith(PasswordRecoveryEvent value,
          $Res Function(PasswordRecoveryEvent) then) =
      _$PasswordRecoveryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordRecoveryEventCopyWithImpl<$Res>
    implements $PasswordRecoveryEventCopyWith<$Res> {
  _$PasswordRecoveryEventCopyWithImpl(this._value, this._then);

  final PasswordRecoveryEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordRecoveryEvent) _then;
}

/// @nodoc
abstract class _$ChangedPhoneCopyWith<$Res> {
  factory _$ChangedPhoneCopyWith(
          _ChangedPhone value, $Res Function(_ChangedPhone) then) =
      __$ChangedPhoneCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$ChangedPhoneCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res>
    implements _$ChangedPhoneCopyWith<$Res> {
  __$ChangedPhoneCopyWithImpl(
      _ChangedPhone _value, $Res Function(_ChangedPhone) _then)
      : super(_value, (v) => _then(v as _ChangedPhone));

  @override
  _ChangedPhone get _value => super._value as _ChangedPhone;

  @override
  $Res call({
    Object? phoneStr = freezed,
  }) {
    return _then(_ChangedPhone(
      phoneStr == freezed
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangedPhone implements _ChangedPhone {
  const _$_ChangedPhone(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'PasswordRecoveryEvent.changedPhone(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPhone &&
            (identical(other.phoneStr, phoneStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneStr, phoneStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneStr);

  @JsonKey(ignore: true)
  @override
  _$ChangedPhoneCopyWith<_ChangedPhone> get copyWith =>
      __$ChangedPhoneCopyWithImpl<_ChangedPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) changedPhone,
    required TResult Function() submitSmsCode,
  }) {
    return changedPhone(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? changedPhone,
    TResult Function()? submitSmsCode,
    required TResult orElse(),
  }) {
    if (changedPhone != null) {
      return changedPhone(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedPhone value) changedPhone,
    required TResult Function(_SubmitSmsCode value) submitSmsCode,
  }) {
    return changedPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedPhone value)? changedPhone,
    TResult Function(_SubmitSmsCode value)? submitSmsCode,
    required TResult orElse(),
  }) {
    if (changedPhone != null) {
      return changedPhone(this);
    }
    return orElse();
  }
}

abstract class _ChangedPhone implements PasswordRecoveryEvent {
  const factory _ChangedPhone(String phoneStr) = _$_ChangedPhone;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangedPhoneCopyWith<_ChangedPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitSmsCodeCopyWith<$Res> {
  factory _$SubmitSmsCodeCopyWith(
          _SubmitSmsCode value, $Res Function(_SubmitSmsCode) then) =
      __$SubmitSmsCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitSmsCodeCopyWithImpl<$Res>
    extends _$PasswordRecoveryEventCopyWithImpl<$Res>
    implements _$SubmitSmsCodeCopyWith<$Res> {
  __$SubmitSmsCodeCopyWithImpl(
      _SubmitSmsCode _value, $Res Function(_SubmitSmsCode) _then)
      : super(_value, (v) => _then(v as _SubmitSmsCode));

  @override
  _SubmitSmsCode get _value => super._value as _SubmitSmsCode;
}

/// @nodoc

class _$_SubmitSmsCode implements _SubmitSmsCode {
  const _$_SubmitSmsCode();

  @override
  String toString() {
    return 'PasswordRecoveryEvent.submitSmsCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitSmsCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) changedPhone,
    required TResult Function() submitSmsCode,
  }) {
    return submitSmsCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? changedPhone,
    TResult Function()? submitSmsCode,
    required TResult orElse(),
  }) {
    if (submitSmsCode != null) {
      return submitSmsCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedPhone value) changedPhone,
    required TResult Function(_SubmitSmsCode value) submitSmsCode,
  }) {
    return submitSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedPhone value)? changedPhone,
    TResult Function(_SubmitSmsCode value)? submitSmsCode,
    required TResult orElse(),
  }) {
    if (submitSmsCode != null) {
      return submitSmsCode(this);
    }
    return orElse();
  }
}

abstract class _SubmitSmsCode implements PasswordRecoveryEvent {
  const factory _SubmitSmsCode() = _$_SubmitSmsCode;
}

/// @nodoc
class _$PasswordRecoveryStateTearOff {
  const _$PasswordRecoveryStateTearOff();

  _PasswordRecoveryState call(
      {required Phone phone,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _PasswordRecoveryState(
      phone: phone,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PasswordRecoveryState = _$PasswordRecoveryStateTearOff();

/// @nodoc
mixin _$PasswordRecoveryState {
  Phone get phone => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordRecoveryStateCopyWith<PasswordRecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRecoveryStateCopyWith<$Res> {
  factory $PasswordRecoveryStateCopyWith(PasswordRecoveryState value,
          $Res Function(PasswordRecoveryState) then) =
      _$PasswordRecoveryStateCopyWithImpl<$Res>;
  $Res call(
      {Phone phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$PasswordRecoveryStateCopyWithImpl<$Res>
    implements $PasswordRecoveryStateCopyWith<$Res> {
  _$PasswordRecoveryStateCopyWithImpl(this._value, this._then);

  final PasswordRecoveryState _value;
  // ignore: unused_field
  final $Res Function(PasswordRecoveryState) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PasswordRecoveryStateCopyWith<$Res>
    implements $PasswordRecoveryStateCopyWith<$Res> {
  factory _$PasswordRecoveryStateCopyWith(_PasswordRecoveryState value,
          $Res Function(_PasswordRecoveryState) then) =
      __$PasswordRecoveryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Phone phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$PasswordRecoveryStateCopyWithImpl<$Res>
    extends _$PasswordRecoveryStateCopyWithImpl<$Res>
    implements _$PasswordRecoveryStateCopyWith<$Res> {
  __$PasswordRecoveryStateCopyWithImpl(_PasswordRecoveryState _value,
      $Res Function(_PasswordRecoveryState) _then)
      : super(_value, (v) => _then(v as _PasswordRecoveryState));

  @override
  _PasswordRecoveryState get _value => super._value as _PasswordRecoveryState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_PasswordRecoveryState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PasswordRecoveryState implements _PasswordRecoveryState {
  const _$_PasswordRecoveryState(
      {required this.phone,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

  @override
  final Phone phone;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'PasswordRecoveryState(phone: $phone, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordRecoveryState &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PasswordRecoveryStateCopyWith<_PasswordRecoveryState> get copyWith =>
      __$PasswordRecoveryStateCopyWithImpl<_PasswordRecoveryState>(
          this, _$identity);
}

abstract class _PasswordRecoveryState implements PasswordRecoveryState {
  const factory _PasswordRecoveryState(
          {required Phone phone,
          required bool showErrorMessages,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_PasswordRecoveryState;

  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PasswordRecoveryStateCopyWith<_PasswordRecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}
