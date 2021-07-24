// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  _PhoneChanged phoneChanged(String phoneStr) {
    return _PhoneChanged(
      phoneStr,
    );
  }

  _SmsCodeChanged smsCodeChanged(String smsStr) {
    return _SmsCodeChanged(
      smsStr,
    );
  }

  _SubmitSignIn submitSignIn() {
    return const _SubmitSignIn();
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String smsStr) smsCodeChanged,
    required TResult Function() submitSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String smsStr)? smsCodeChanged,
    TResult Function()? submitSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SubmitSignIn value) submitSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SubmitSignIn value)? submitSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$PhoneChangedCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) then) =
      __$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(
      _PhoneChanged _value, $Res Function(_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _PhoneChanged));

  @override
  _PhoneChanged get _value => super._value as _PhoneChanged;

  @override
  $Res call({
    Object? phoneStr = freezed,
  }) {
    return _then(_PhoneChanged(
      phoneStr == freezed
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'SignInFormEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChanged &&
            (identical(other.phoneStr, phoneStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneStr, phoneStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneStr);

  @JsonKey(ignore: true)
  @override
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String smsStr) smsCodeChanged,
    required TResult Function() submitSignIn,
  }) {
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String smsStr)? smsCodeChanged,
    TResult Function()? submitSignIn,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SubmitSignIn value) submitSignIn,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SubmitSignIn value)? submitSignIn,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements SignInFormEvent {
  const factory _PhoneChanged(String phoneStr) = _$_PhoneChanged;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SmsCodeChangedCopyWith<$Res> {
  factory _$SmsCodeChangedCopyWith(
          _SmsCodeChanged value, $Res Function(_SmsCodeChanged) then) =
      __$SmsCodeChangedCopyWithImpl<$Res>;
  $Res call({String smsStr});
}

/// @nodoc
class __$SmsCodeChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SmsCodeChangedCopyWith<$Res> {
  __$SmsCodeChangedCopyWithImpl(
      _SmsCodeChanged _value, $Res Function(_SmsCodeChanged) _then)
      : super(_value, (v) => _then(v as _SmsCodeChanged));

  @override
  _SmsCodeChanged get _value => super._value as _SmsCodeChanged;

  @override
  $Res call({
    Object? smsStr = freezed,
  }) {
    return _then(_SmsCodeChanged(
      smsStr == freezed
          ? _value.smsStr
          : smsStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SmsCodeChanged implements _SmsCodeChanged {
  const _$_SmsCodeChanged(this.smsStr);

  @override
  final String smsStr;

  @override
  String toString() {
    return 'SignInFormEvent.smsCodeChanged(smsStr: $smsStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SmsCodeChanged &&
            (identical(other.smsStr, smsStr) ||
                const DeepCollectionEquality().equals(other.smsStr, smsStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(smsStr);

  @JsonKey(ignore: true)
  @override
  _$SmsCodeChangedCopyWith<_SmsCodeChanged> get copyWith =>
      __$SmsCodeChangedCopyWithImpl<_SmsCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String smsStr) smsCodeChanged,
    required TResult Function() submitSignIn,
  }) {
    return smsCodeChanged(smsStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String smsStr)? smsCodeChanged,
    TResult Function()? submitSignIn,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SubmitSignIn value) submitSignIn,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SubmitSignIn value)? submitSignIn,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _SmsCodeChanged implements SignInFormEvent {
  const factory _SmsCodeChanged(String smsStr) = _$_SmsCodeChanged;

  String get smsStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SmsCodeChangedCopyWith<_SmsCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitSignInCopyWith<$Res> {
  factory _$SubmitSignInCopyWith(
          _SubmitSignIn value, $Res Function(_SubmitSignIn) then) =
      __$SubmitSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitSignInCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SubmitSignInCopyWith<$Res> {
  __$SubmitSignInCopyWithImpl(
      _SubmitSignIn _value, $Res Function(_SubmitSignIn) _then)
      : super(_value, (v) => _then(v as _SubmitSignIn));

  @override
  _SubmitSignIn get _value => super._value as _SubmitSignIn;
}

/// @nodoc

class _$_SubmitSignIn implements _SubmitSignIn {
  const _$_SubmitSignIn();

  @override
  String toString() {
    return 'SignInFormEvent.submitSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String smsStr) smsCodeChanged,
    required TResult Function() submitSignIn,
  }) {
    return submitSignIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String smsStr)? smsCodeChanged,
    TResult Function()? submitSignIn,
    required TResult orElse(),
  }) {
    if (submitSignIn != null) {
      return submitSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_SmsCodeChanged value) smsCodeChanged,
    required TResult Function(_SubmitSignIn value) submitSignIn,
  }) {
    return submitSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_SmsCodeChanged value)? smsCodeChanged,
    TResult Function(_SubmitSignIn value)? submitSignIn,
    required TResult orElse(),
  }) {
    if (submitSignIn != null) {
      return submitSignIn(this);
    }
    return orElse();
  }
}

abstract class _SubmitSignIn implements SignInFormEvent {
  const factory _SubmitSignIn() = _$_SubmitSignIn;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required Phone phone,
      required SmsCode smsCode,
      required bool showError,
      required bool isSubmiting,
      required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _SignInFormState(
      phone: phone,
      smsCode: smsCode,
      showError: showError,
      isSubmiting: isSubmiting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  Phone get phone => throw _privateConstructorUsedError;
  SmsCode get smsCode => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isSubmiting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Phone phone,
      SmsCode smsCode,
      bool showError,
      bool isSubmiting,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? smsCode = freezed,
    Object? showError = freezed,
    Object? isSubmiting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as SmsCode,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: isSubmiting == freezed
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Phone phone,
      SmsCode smsCode,
      bool showError,
      bool isSubmiting,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? phone = freezed,
    Object? smsCode = freezed,
    Object? showError = freezed,
    Object? isSubmiting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as SmsCode,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmiting: isSubmiting == freezed
          ? _value.isSubmiting
          : isSubmiting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.phone,
      required this.smsCode,
      required this.showError,
      required this.isSubmiting,
      required this.failureOrSuccessOption});

  @override
  final Phone phone;
  @override
  final SmsCode smsCode;
  @override
  final bool showError;
  @override
  final bool isSubmiting;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(phone: $phone, smsCode: $smsCode, showError: $showError, isSubmiting: $isSubmiting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality()
                    .equals(other.smsCode, smsCode)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)) &&
            (identical(other.isSubmiting, isSubmiting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmiting, isSubmiting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(smsCode) ^
      const DeepCollectionEquality().hash(showError) ^
      const DeepCollectionEquality().hash(isSubmiting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {required Phone phone,
          required SmsCode smsCode,
          required bool showError,
          required bool isSubmiting,
          required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  SmsCode get smsCode => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  bool get isSubmiting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
