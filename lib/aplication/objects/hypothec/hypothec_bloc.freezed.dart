// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hypothec_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HypothecEventTearOff {
  const _$HypothecEventTearOff();

  _ChangeName changeName(String nameStr) {
    return _ChangeName(
      nameStr,
    );
  }

  _ChangePhone changePhone(String phoneStr) {
    return _ChangePhone(
      phoneStr,
    );
  }

  _ChangeRequest changeRequest(String requestStr) {
    return _ChangeRequest(
      requestStr,
    );
  }

  _ChangeObjectName changeObjectName(String objectNameStr) {
    return _ChangeObjectName(
      objectNameStr,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $HypothecEvent = _$HypothecEventTearOff();

/// @nodoc
mixin _$HypothecEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HypothecEventCopyWith<$Res> {
  factory $HypothecEventCopyWith(
          HypothecEvent value, $Res Function(HypothecEvent) then) =
      _$HypothecEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HypothecEventCopyWithImpl<$Res>
    implements $HypothecEventCopyWith<$Res> {
  _$HypothecEventCopyWithImpl(this._value, this._then);

  final HypothecEvent _value;
  // ignore: unused_field
  final $Res Function(HypothecEvent) _then;
}

/// @nodoc
abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$ChangeNameCopyWithImpl<$Res> extends _$HypothecEventCopyWithImpl<$Res>
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
    return 'HypothecEvent.changeName(nameStr: $nameStr)';
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
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements HypothecEvent {
  const factory _ChangeName(String nameStr) = _$_ChangeName;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePhoneCopyWith<$Res> {
  factory _$ChangePhoneCopyWith(
          _ChangePhone value, $Res Function(_ChangePhone) then) =
      __$ChangePhoneCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$ChangePhoneCopyWithImpl<$Res> extends _$HypothecEventCopyWithImpl<$Res>
    implements _$ChangePhoneCopyWith<$Res> {
  __$ChangePhoneCopyWithImpl(
      _ChangePhone _value, $Res Function(_ChangePhone) _then)
      : super(_value, (v) => _then(v as _ChangePhone));

  @override
  _ChangePhone get _value => super._value as _ChangePhone;

  @override
  $Res call({
    Object? phoneStr = freezed,
  }) {
    return _then(_ChangePhone(
      phoneStr == freezed
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePhone implements _ChangePhone {
  const _$_ChangePhone(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'HypothecEvent.changePhone(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePhone &&
            (identical(other.phoneStr, phoneStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneStr, phoneStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneStr);

  @JsonKey(ignore: true)
  @override
  _$ChangePhoneCopyWith<_ChangePhone> get copyWith =>
      __$ChangePhoneCopyWithImpl<_ChangePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) {
    return changePhone(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) {
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements HypothecEvent {
  const factory _ChangePhone(String phoneStr) = _$_ChangePhone;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePhoneCopyWith<_ChangePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeRequestCopyWith<$Res> {
  factory _$ChangeRequestCopyWith(
          _ChangeRequest value, $Res Function(_ChangeRequest) then) =
      __$ChangeRequestCopyWithImpl<$Res>;
  $Res call({String requestStr});
}

/// @nodoc
class __$ChangeRequestCopyWithImpl<$Res>
    extends _$HypothecEventCopyWithImpl<$Res>
    implements _$ChangeRequestCopyWith<$Res> {
  __$ChangeRequestCopyWithImpl(
      _ChangeRequest _value, $Res Function(_ChangeRequest) _then)
      : super(_value, (v) => _then(v as _ChangeRequest));

  @override
  _ChangeRequest get _value => super._value as _ChangeRequest;

  @override
  $Res call({
    Object? requestStr = freezed,
  }) {
    return _then(_ChangeRequest(
      requestStr == freezed
          ? _value.requestStr
          : requestStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeRequest implements _ChangeRequest {
  const _$_ChangeRequest(this.requestStr);

  @override
  final String requestStr;

  @override
  String toString() {
    return 'HypothecEvent.changeRequest(requestStr: $requestStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeRequest &&
            (identical(other.requestStr, requestStr) ||
                const DeepCollectionEquality()
                    .equals(other.requestStr, requestStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeRequestCopyWith<_ChangeRequest> get copyWith =>
      __$ChangeRequestCopyWithImpl<_ChangeRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) {
    return changeRequest(requestStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeRequest != null) {
      return changeRequest(requestStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) {
    return changeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeRequest != null) {
      return changeRequest(this);
    }
    return orElse();
  }
}

abstract class _ChangeRequest implements HypothecEvent {
  const factory _ChangeRequest(String requestStr) = _$_ChangeRequest;

  String get requestStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeRequestCopyWith<_ChangeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeObjectNameCopyWith<$Res> {
  factory _$ChangeObjectNameCopyWith(
          _ChangeObjectName value, $Res Function(_ChangeObjectName) then) =
      __$ChangeObjectNameCopyWithImpl<$Res>;
  $Res call({String objectNameStr});
}

/// @nodoc
class __$ChangeObjectNameCopyWithImpl<$Res>
    extends _$HypothecEventCopyWithImpl<$Res>
    implements _$ChangeObjectNameCopyWith<$Res> {
  __$ChangeObjectNameCopyWithImpl(
      _ChangeObjectName _value, $Res Function(_ChangeObjectName) _then)
      : super(_value, (v) => _then(v as _ChangeObjectName));

  @override
  _ChangeObjectName get _value => super._value as _ChangeObjectName;

  @override
  $Res call({
    Object? objectNameStr = freezed,
  }) {
    return _then(_ChangeObjectName(
      objectNameStr == freezed
          ? _value.objectNameStr
          : objectNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeObjectName implements _ChangeObjectName {
  const _$_ChangeObjectName(this.objectNameStr);

  @override
  final String objectNameStr;

  @override
  String toString() {
    return 'HypothecEvent.changeObjectName(objectNameStr: $objectNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeObjectName &&
            (identical(other.objectNameStr, objectNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.objectNameStr, objectNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectNameStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeObjectNameCopyWith<_ChangeObjectName> get copyWith =>
      __$ChangeObjectNameCopyWithImpl<_ChangeObjectName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) {
    return changeObjectName(objectNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeObjectName != null) {
      return changeObjectName(objectNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) {
    return changeObjectName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeObjectName != null) {
      return changeObjectName(this);
    }
    return orElse();
  }
}

abstract class _ChangeObjectName implements HypothecEvent {
  const factory _ChangeObjectName(String objectNameStr) = _$_ChangeObjectName;

  String get objectNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeObjectNameCopyWith<_ChangeObjectName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$HypothecEventCopyWithImpl<$Res>
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
    return 'HypothecEvent.submit()';
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
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectNameStr) changeObjectName,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectNameStr)? changeObjectName,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectName value) changeObjectName,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectName value)? changeObjectName,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements HypothecEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$HypothecStateTearOff {
  const _$HypothecStateTearOff();

  _HypothecState call(
      {required Hypothec hypothec,
      required bool isSubmitting,
      required bool showErrorMessage,
      required Option<Either<BobjectFailure, Unit>> failureOrOption}) {
    return _HypothecState(
      hypothec: hypothec,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $HypothecState = _$HypothecStateTearOff();

/// @nodoc
mixin _$HypothecState {
  Hypothec get hypothec => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HypothecStateCopyWith<HypothecState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HypothecStateCopyWith<$Res> {
  factory $HypothecStateCopyWith(
          HypothecState value, $Res Function(HypothecState) then) =
      _$HypothecStateCopyWithImpl<$Res>;
  $Res call(
      {Hypothec hypothec,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$HypothecStateCopyWithImpl<$Res>
    implements $HypothecStateCopyWith<$Res> {
  _$HypothecStateCopyWithImpl(this._value, this._then);

  final HypothecState _value;
  // ignore: unused_field
  final $Res Function(HypothecState) _then;

  @override
  $Res call({
    Object? hypothec = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      hypothec: hypothec == freezed
          ? _value.hypothec
          : hypothec // ignore: cast_nullable_to_non_nullable
              as Hypothec,
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
              as Option<Either<BobjectFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$HypothecStateCopyWith<$Res>
    implements $HypothecStateCopyWith<$Res> {
  factory _$HypothecStateCopyWith(
          _HypothecState value, $Res Function(_HypothecState) then) =
      __$HypothecStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Hypothec hypothec,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$HypothecStateCopyWithImpl<$Res>
    extends _$HypothecStateCopyWithImpl<$Res>
    implements _$HypothecStateCopyWith<$Res> {
  __$HypothecStateCopyWithImpl(
      _HypothecState _value, $Res Function(_HypothecState) _then)
      : super(_value, (v) => _then(v as _HypothecState));

  @override
  _HypothecState get _value => super._value as _HypothecState;

  @override
  $Res call({
    Object? hypothec = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_HypothecState(
      hypothec: hypothec == freezed
          ? _value.hypothec
          : hypothec // ignore: cast_nullable_to_non_nullable
              as Hypothec,
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
              as Option<Either<BobjectFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HypothecState implements _HypothecState {
  const _$_HypothecState(
      {required this.hypothec,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.failureOrOption});

  @override
  final Hypothec hypothec;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'HypothecState(hypothec: $hypothec, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HypothecState &&
            (identical(other.hypothec, hypothec) ||
                const DeepCollectionEquality()
                    .equals(other.hypothec, hypothec)) &&
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
      const DeepCollectionEquality().hash(hypothec) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$HypothecStateCopyWith<_HypothecState> get copyWith =>
      __$HypothecStateCopyWithImpl<_HypothecState>(this, _$identity);
}

abstract class _HypothecState implements HypothecState {
  const factory _HypothecState(
          {required Hypothec hypothec,
          required bool isSubmitting,
          required bool showErrorMessage,
          required Option<Either<BobjectFailure, Unit>> failureOrOption}) =
      _$_HypothecState;

  @override
  Hypothec get hypothec => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HypothecStateCopyWith<_HypothecState> get copyWith =>
      throw _privateConstructorUsedError;
}
