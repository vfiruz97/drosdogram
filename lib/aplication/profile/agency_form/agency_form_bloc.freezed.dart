// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agency_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgencyFormEventTearOff {
  const _$AgencyFormEventTearOff();

  _ChangeEmail changeEmail(String emailStr) {
    return _ChangeEmail(
      emailStr,
    );
  }

  _ChangeName changeName(String nameStr) {
    return _ChangeName(
      nameStr,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $AgencyFormEvent = _$AgencyFormEventTearOff();

/// @nodoc
mixin _$AgencyFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String nameStr) changeName,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String nameStr)? changeName,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyFormEventCopyWith<$Res> {
  factory $AgencyFormEventCopyWith(
          AgencyFormEvent value, $Res Function(AgencyFormEvent) then) =
      _$AgencyFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgencyFormEventCopyWithImpl<$Res>
    implements $AgencyFormEventCopyWith<$Res> {
  _$AgencyFormEventCopyWithImpl(this._value, this._then);

  final AgencyFormEvent _value;
  // ignore: unused_field
  final $Res Function(AgencyFormEvent) _then;
}

/// @nodoc
abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$ChangeEmailCopyWithImpl<$Res>
    extends _$AgencyFormEventCopyWithImpl<$Res>
    implements _$ChangeEmailCopyWith<$Res> {
  __$ChangeEmailCopyWithImpl(
      _ChangeEmail _value, $Res Function(_ChangeEmail) _then)
      : super(_value, (v) => _then(v as _ChangeEmail));

  @override
  _ChangeEmail get _value => super._value as _ChangeEmail;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_ChangeEmail(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AgencyFormEvent.changeEmail(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmail &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      __$ChangeEmailCopyWithImpl<_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String nameStr) changeName,
    required TResult Function() submit,
  }) {
    return changeEmail(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String nameStr)? changeName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_Submit value) submit,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements AgencyFormEvent {
  const factory _ChangeEmail(String emailStr) = _$_ChangeEmail;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$ChangeNameCopyWithImpl<$Res>
    extends _$AgencyFormEventCopyWithImpl<$Res>
    implements _$ChangeNameCopyWith<$Res> {
  __$ChangeNameCopyWithImpl(
      _ChangeName _value, $Res Function(_ChangeName) _then)
      : super(_value, (v) => _then(v as _ChangeName));

  @override
  _ChangeName get _value => super._value as _ChangeName;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_ChangeName(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeName implements _ChangeName {
  const _$_ChangeName(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'AgencyFormEvent.changeName(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeName &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      __$ChangeNameCopyWithImpl<_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String nameStr) changeName,
    required TResult Function() submit,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String nameStr)? changeName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_Submit value) submit,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements AgencyFormEvent {
  const factory _ChangeName(String nameStr) = _$_ChangeName;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$AgencyFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'AgencyFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String nameStr) changeName,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String nameStr)? changeName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements AgencyFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$AgencyFormStateTearOff {
  const _$AgencyFormStateTearOff();

  _AgencyFormState call(
      {required Agency agency,
      required bool isSubmitting,
      required bool showErrorMessage,
      required Option<Either<ProfileFailure, Agency>> failureOrOption}) {
    return _AgencyFormState(
      agency: agency,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $AgencyFormState = _$AgencyFormStateTearOff();

/// @nodoc
mixin _$AgencyFormState {
  Agency get agency => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Agency>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgencyFormStateCopyWith<AgencyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyFormStateCopyWith<$Res> {
  factory $AgencyFormStateCopyWith(
          AgencyFormState value, $Res Function(AgencyFormState) then) =
      _$AgencyFormStateCopyWithImpl<$Res>;
  $Res call(
      {Agency agency,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<ProfileFailure, Agency>> failureOrOption});

  $AgencyCopyWith<$Res> get agency;
}

/// @nodoc
class _$AgencyFormStateCopyWithImpl<$Res>
    implements $AgencyFormStateCopyWith<$Res> {
  _$AgencyFormStateCopyWithImpl(this._value, this._then);

  final AgencyFormState _value;
  // ignore: unused_field
  final $Res Function(AgencyFormState) _then;

  @override
  $Res call({
    Object? agency = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      agency: agency == freezed
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as Agency,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Agency>>,
    ));
  }

  @override
  $AgencyCopyWith<$Res> get agency {
    return $AgencyCopyWith<$Res>(_value.agency, (value) {
      return _then(_value.copyWith(agency: value));
    });
  }
}

/// @nodoc
abstract class _$AgencyFormStateCopyWith<$Res>
    implements $AgencyFormStateCopyWith<$Res> {
  factory _$AgencyFormStateCopyWith(
          _AgencyFormState value, $Res Function(_AgencyFormState) then) =
      __$AgencyFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Agency agency,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<ProfileFailure, Agency>> failureOrOption});

  @override
  $AgencyCopyWith<$Res> get agency;
}

/// @nodoc
class __$AgencyFormStateCopyWithImpl<$Res>
    extends _$AgencyFormStateCopyWithImpl<$Res>
    implements _$AgencyFormStateCopyWith<$Res> {
  __$AgencyFormStateCopyWithImpl(
      _AgencyFormState _value, $Res Function(_AgencyFormState) _then)
      : super(_value, (v) => _then(v as _AgencyFormState));

  @override
  _AgencyFormState get _value => super._value as _AgencyFormState;

  @override
  $Res call({
    Object? agency = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_AgencyFormState(
      agency: agency == freezed
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as Agency,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Agency>>,
    ));
  }
}

/// @nodoc

class _$_AgencyFormState implements _AgencyFormState {
  const _$_AgencyFormState(
      {required this.agency,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.failureOrOption});

  @override
  final Agency agency;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<ProfileFailure, Agency>> failureOrOption;

  @override
  String toString() {
    return 'AgencyFormState(agency: $agency, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AgencyFormState &&
            (identical(other.agency, agency) ||
                const DeepCollectionEquality().equals(other.agency, agency)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.failureOrOption, failureOrOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrOption, failureOrOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(agency) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$AgencyFormStateCopyWith<_AgencyFormState> get copyWith =>
      __$AgencyFormStateCopyWithImpl<_AgencyFormState>(this, _$identity);
}

abstract class _AgencyFormState implements AgencyFormState {
  const factory _AgencyFormState(
          {required Agency agency,
          required bool isSubmitting,
          required bool showErrorMessage,
          required Option<Either<ProfileFailure, Agency>> failureOrOption}) =
      _$_AgencyFormState;

  @override
  Agency get agency => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, Agency>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgencyFormStateCopyWith<_AgencyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
