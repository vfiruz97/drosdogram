// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderFormEventTearOff {
  const _$OrderFormEventTearOff();

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

  _ChangeObjectId changeObjectId(String objectId) {
    return _ChangeObjectId(
      objectId,
    );
  }

  _ChangeImages changeImages(List<String> images) {
    return _ChangeImages(
      images,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $OrderFormEvent = _$OrderFormEventTearOff();

/// @nodoc
mixin _$OrderFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormEventCopyWith<$Res> {
  factory $OrderFormEventCopyWith(
          OrderFormEvent value, $Res Function(OrderFormEvent) then) =
      _$OrderFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderFormEventCopyWithImpl<$Res>
    implements $OrderFormEventCopyWith<$Res> {
  _$OrderFormEventCopyWithImpl(this._value, this._then);

  final OrderFormEvent _value;
  // ignore: unused_field
  final $Res Function(OrderFormEvent) _then;
}

/// @nodoc
abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$ChangeNameCopyWithImpl<$Res> extends _$OrderFormEventCopyWithImpl<$Res>
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
    return 'OrderFormEvent.changeName(nameStr: $nameStr)';
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
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
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
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
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
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
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
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements OrderFormEvent {
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
class __$ChangePhoneCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res>
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
    return 'OrderFormEvent.changePhone(phoneStr: $phoneStr)';
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
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
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
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
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
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
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
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements OrderFormEvent {
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
    extends _$OrderFormEventCopyWithImpl<$Res>
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
    return 'OrderFormEvent.changeRequest(requestStr: $requestStr)';
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
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
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
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
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
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
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
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeRequest != null) {
      return changeRequest(this);
    }
    return orElse();
  }
}

abstract class _ChangeRequest implements OrderFormEvent {
  const factory _ChangeRequest(String requestStr) = _$_ChangeRequest;

  String get requestStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeRequestCopyWith<_ChangeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeObjectIdCopyWith<$Res> {
  factory _$ChangeObjectIdCopyWith(
          _ChangeObjectId value, $Res Function(_ChangeObjectId) then) =
      __$ChangeObjectIdCopyWithImpl<$Res>;
  $Res call({String objectId});
}

/// @nodoc
class __$ChangeObjectIdCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res>
    implements _$ChangeObjectIdCopyWith<$Res> {
  __$ChangeObjectIdCopyWithImpl(
      _ChangeObjectId _value, $Res Function(_ChangeObjectId) _then)
      : super(_value, (v) => _then(v as _ChangeObjectId));

  @override
  _ChangeObjectId get _value => super._value as _ChangeObjectId;

  @override
  $Res call({
    Object? objectId = freezed,
  }) {
    return _then(_ChangeObjectId(
      objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeObjectId implements _ChangeObjectId {
  const _$_ChangeObjectId(this.objectId);

  @override
  final String objectId;

  @override
  String toString() {
    return 'OrderFormEvent.changeObjectId(objectId: $objectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeObjectId &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectId);

  @JsonKey(ignore: true)
  @override
  _$ChangeObjectIdCopyWith<_ChangeObjectId> get copyWith =>
      __$ChangeObjectIdCopyWithImpl<_ChangeObjectId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
    required TResult Function() submit,
  }) {
    return changeObjectId(objectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeObjectId != null) {
      return changeObjectId(objectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
    required TResult Function(_Submit value) submit,
  }) {
    return changeObjectId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeObjectId != null) {
      return changeObjectId(this);
    }
    return orElse();
  }
}

abstract class _ChangeObjectId implements OrderFormEvent {
  const factory _ChangeObjectId(String objectId) = _$_ChangeObjectId;

  String get objectId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeObjectIdCopyWith<_ChangeObjectId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeImagesCopyWith<$Res> {
  factory _$ChangeImagesCopyWith(
          _ChangeImages value, $Res Function(_ChangeImages) then) =
      __$ChangeImagesCopyWithImpl<$Res>;
  $Res call({List<String> images});
}

/// @nodoc
class __$ChangeImagesCopyWithImpl<$Res>
    extends _$OrderFormEventCopyWithImpl<$Res>
    implements _$ChangeImagesCopyWith<$Res> {
  __$ChangeImagesCopyWithImpl(
      _ChangeImages _value, $Res Function(_ChangeImages) _then)
      : super(_value, (v) => _then(v as _ChangeImages));

  @override
  _ChangeImages get _value => super._value as _ChangeImages;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_ChangeImages(
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChangeImages implements _ChangeImages {
  const _$_ChangeImages(this.images);

  @override
  final List<String> images;

  @override
  String toString() {
    return 'OrderFormEvent.changeImages(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeImages &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$ChangeImagesCopyWith<_ChangeImages> get copyWith =>
      __$ChangeImagesCopyWithImpl<_ChangeImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String requestStr) changeRequest,
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
    required TResult Function() submit,
  }) {
    return changeImages(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String requestStr)? changeRequest,
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeImages != null) {
      return changeImages(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeRequest value) changeRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
    required TResult Function(_Submit value) submit,
  }) {
    return changeImages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeRequest value)? changeRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeImages != null) {
      return changeImages(this);
    }
    return orElse();
  }
}

abstract class _ChangeImages implements OrderFormEvent {
  const factory _ChangeImages(List<String> images) = _$_ChangeImages;

  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeImagesCopyWith<_ChangeImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$OrderFormEventCopyWithImpl<$Res>
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
    return 'OrderFormEvent.submit()';
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
    required TResult Function(String objectId) changeObjectId,
    required TResult Function(List<String> images) changeImages,
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
    TResult Function(String objectId)? changeObjectId,
    TResult Function(List<String> images)? changeImages,
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
    required TResult Function(_ChangeObjectId value) changeObjectId,
    required TResult Function(_ChangeImages value) changeImages,
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
    TResult Function(_ChangeObjectId value)? changeObjectId,
    TResult Function(_ChangeImages value)? changeImages,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements OrderFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$OrderFormStateTearOff {
  const _$OrderFormStateTearOff();

  _OrderFormState call(
      {required OrderM order,
      required bool isSubmitting,
      required bool showErrorMessage,
      required Option<Either<BobjectFailure, Unit>> failureOrOption}) {
    return _OrderFormState(
      order: order,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $OrderFormState = _$OrderFormStateTearOff();

/// @nodoc
mixin _$OrderFormState {
  OrderM get order => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderFormStateCopyWith<OrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormStateCopyWith<$Res> {
  factory $OrderFormStateCopyWith(
          OrderFormState value, $Res Function(OrderFormState) then) =
      _$OrderFormStateCopyWithImpl<$Res>;
  $Res call(
      {OrderM order,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$OrderFormStateCopyWithImpl<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  _$OrderFormStateCopyWithImpl(this._value, this._then);

  final OrderFormState _value;
  // ignore: unused_field
  final $Res Function(OrderFormState) _then;

  @override
  $Res call({
    Object? order = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderM,
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
abstract class _$OrderFormStateCopyWith<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  factory _$OrderFormStateCopyWith(
          _OrderFormState value, $Res Function(_OrderFormState) then) =
      __$OrderFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OrderM order,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$OrderFormStateCopyWithImpl<$Res>
    extends _$OrderFormStateCopyWithImpl<$Res>
    implements _$OrderFormStateCopyWith<$Res> {
  __$OrderFormStateCopyWithImpl(
      _OrderFormState _value, $Res Function(_OrderFormState) _then)
      : super(_value, (v) => _then(v as _OrderFormState));

  @override
  _OrderFormState get _value => super._value as _OrderFormState;

  @override
  $Res call({
    Object? order = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_OrderFormState(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderM,
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

class _$_OrderFormState implements _OrderFormState {
  const _$_OrderFormState(
      {required this.order,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.failureOrOption});

  @override
  final OrderM order;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'OrderFormState(order: $order, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderFormState &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
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
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$OrderFormStateCopyWith<_OrderFormState> get copyWith =>
      __$OrderFormStateCopyWithImpl<_OrderFormState>(this, _$identity);
}

abstract class _OrderFormState implements OrderFormState {
  const factory _OrderFormState(
          {required OrderM order,
          required bool isSubmitting,
          required bool showErrorMessage,
          required Option<Either<BobjectFailure, Unit>> failureOrOption}) =
      _$_OrderFormState;

  @override
  OrderM get order => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderFormStateCopyWith<_OrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
