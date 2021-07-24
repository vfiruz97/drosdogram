// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _ChangeImage changeImage(String imagePath) {
    return _ChangeImage(
      imagePath,
    );
  }

  _ChangeName changeName(String nameStr) {
    return _ChangeName(
      nameStr,
    );
  }

  _ChangeAgency changeAgency(String agencyStr) {
    return _ChangeAgency(
      agencyStr,
    );
  }

  _ChangePhone changePhone(String phoneStr) {
    return _ChangePhone(
      phoneStr,
    );
  }

  _ChangeEmail changeEmail(String emailStr) {
    return _ChangeEmail(
      emailStr,
    );
  }

  _AddNewAgency addNewAgency(Agency agency) {
    return _AddNewAgency(
      agency,
    );
  }

  _GetUserInfo getUserInfo() {
    return const _GetUserInfo();
  }

  _EditUserInfo editUserInfo() {
    return const _EditUserInfo();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$ChangeImageCopyWith<$Res> {
  factory _$ChangeImageCopyWith(
          _ChangeImage value, $Res Function(_ChangeImage) then) =
      __$ChangeImageCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class __$ChangeImageCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ChangeImageCopyWith<$Res> {
  __$ChangeImageCopyWithImpl(
      _ChangeImage _value, $Res Function(_ChangeImage) _then)
      : super(_value, (v) => _then(v as _ChangeImage));

  @override
  _ChangeImage get _value => super._value as _ChangeImage;

  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_ChangeImage(
      imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeImage implements _ChangeImage {
  const _$_ChangeImage(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ProfileEvent.changeImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeImage &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @JsonKey(ignore: true)
  @override
  _$ChangeImageCopyWith<_ChangeImage> get copyWith =>
      __$ChangeImageCopyWithImpl<_ChangeImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return changeImage(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class _ChangeImage implements ProfileEvent {
  const factory _ChangeImage(String imagePath) = _$_ChangeImage;

  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeImageCopyWith<_ChangeImage> get copyWith =>
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
class __$ChangeNameCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.changeName(nameStr: $nameStr)';
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
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
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
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements ProfileEvent {
  const factory _ChangeName(String nameStr) = _$_ChangeName;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAgencyCopyWith<$Res> {
  factory _$ChangeAgencyCopyWith(
          _ChangeAgency value, $Res Function(_ChangeAgency) then) =
      __$ChangeAgencyCopyWithImpl<$Res>;
  $Res call({String agencyStr});
}

/// @nodoc
class __$ChangeAgencyCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ChangeAgencyCopyWith<$Res> {
  __$ChangeAgencyCopyWithImpl(
      _ChangeAgency _value, $Res Function(_ChangeAgency) _then)
      : super(_value, (v) => _then(v as _ChangeAgency));

  @override
  _ChangeAgency get _value => super._value as _ChangeAgency;

  @override
  $Res call({
    Object? agencyStr = freezed,
  }) {
    return _then(_ChangeAgency(
      agencyStr == freezed
          ? _value.agencyStr
          : agencyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeAgency implements _ChangeAgency {
  const _$_ChangeAgency(this.agencyStr);

  @override
  final String agencyStr;

  @override
  String toString() {
    return 'ProfileEvent.changeAgency(agencyStr: $agencyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAgency &&
            (identical(other.agencyStr, agencyStr) ||
                const DeepCollectionEquality()
                    .equals(other.agencyStr, agencyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(agencyStr);

  @JsonKey(ignore: true)
  @override
  _$ChangeAgencyCopyWith<_ChangeAgency> get copyWith =>
      __$ChangeAgencyCopyWithImpl<_ChangeAgency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return changeAgency(agencyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeAgency != null) {
      return changeAgency(agencyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return changeAgency(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeAgency != null) {
      return changeAgency(this);
    }
    return orElse();
  }
}

abstract class _ChangeAgency implements ProfileEvent {
  const factory _ChangeAgency(String agencyStr) = _$_ChangeAgency;

  String get agencyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAgencyCopyWith<_ChangeAgency> get copyWith =>
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
class __$ChangePhoneCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.changePhone(phoneStr: $phoneStr)';
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
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return changePhone(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
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
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements ProfileEvent {
  const factory _ChangePhone(String phoneStr) = _$_ChangePhone;

  String get phoneStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePhoneCopyWith<_ChangePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$ChangeEmailCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.changeEmail(emailStr: $emailStr)';
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
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return changeEmail(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
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
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements ProfileEvent {
  const factory _ChangeEmail(String emailStr) = _$_ChangeEmail;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddNewAgencyCopyWith<$Res> {
  factory _$AddNewAgencyCopyWith(
          _AddNewAgency value, $Res Function(_AddNewAgency) then) =
      __$AddNewAgencyCopyWithImpl<$Res>;
  $Res call({Agency agency});

  $AgencyCopyWith<$Res> get agency;
}

/// @nodoc
class __$AddNewAgencyCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$AddNewAgencyCopyWith<$Res> {
  __$AddNewAgencyCopyWithImpl(
      _AddNewAgency _value, $Res Function(_AddNewAgency) _then)
      : super(_value, (v) => _then(v as _AddNewAgency));

  @override
  _AddNewAgency get _value => super._value as _AddNewAgency;

  @override
  $Res call({
    Object? agency = freezed,
  }) {
    return _then(_AddNewAgency(
      agency == freezed
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as Agency,
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

class _$_AddNewAgency implements _AddNewAgency {
  const _$_AddNewAgency(this.agency);

  @override
  final Agency agency;

  @override
  String toString() {
    return 'ProfileEvent.addNewAgency(agency: $agency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewAgency &&
            (identical(other.agency, agency) ||
                const DeepCollectionEquality().equals(other.agency, agency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(agency);

  @JsonKey(ignore: true)
  @override
  _$AddNewAgencyCopyWith<_AddNewAgency> get copyWith =>
      __$AddNewAgencyCopyWithImpl<_AddNewAgency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return addNewAgency(agency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) {
    if (addNewAgency != null) {
      return addNewAgency(agency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return addNewAgency(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (addNewAgency != null) {
      return addNewAgency(this);
    }
    return orElse();
  }
}

abstract class _AddNewAgency implements ProfileEvent {
  const factory _AddNewAgency(Agency agency) = _$_AddNewAgency;

  Agency get agency => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddNewAgencyCopyWith<_AddNewAgency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserInfoCopyWith<$Res> {
  factory _$GetUserInfoCopyWith(
          _GetUserInfo value, $Res Function(_GetUserInfo) then) =
      __$GetUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetUserInfoCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GetUserInfoCopyWith<$Res> {
  __$GetUserInfoCopyWithImpl(
      _GetUserInfo _value, $Res Function(_GetUserInfo) _then)
      : super(_value, (v) => _then(v as _GetUserInfo));

  @override
  _GetUserInfo get _value => super._value as _GetUserInfo;
}

/// @nodoc

class _$_GetUserInfo implements _GetUserInfo {
  const _$_GetUserInfo();

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class _GetUserInfo implements ProfileEvent {
  const factory _GetUserInfo() = _$_GetUserInfo;
}

/// @nodoc
abstract class _$EditUserInfoCopyWith<$Res> {
  factory _$EditUserInfoCopyWith(
          _EditUserInfo value, $Res Function(_EditUserInfo) then) =
      __$EditUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditUserInfoCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$EditUserInfoCopyWith<$Res> {
  __$EditUserInfoCopyWithImpl(
      _EditUserInfo _value, $Res Function(_EditUserInfo) _then)
      : super(_value, (v) => _then(v as _EditUserInfo));

  @override
  _EditUserInfo get _value => super._value as _EditUserInfo;
}

/// @nodoc

class _$_EditUserInfo implements _EditUserInfo {
  const _$_EditUserInfo();

  @override
  String toString() {
    return 'ProfileEvent.editUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) changeImage,
    required TResult Function(String nameStr) changeName,
    required TResult Function(String agencyStr) changeAgency,
    required TResult Function(String phoneStr) changePhone,
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(Agency agency) addNewAgency,
    required TResult Function() getUserInfo,
    required TResult Function() editUserInfo,
  }) {
    return editUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? changeImage,
    TResult Function(String nameStr)? changeName,
    TResult Function(String agencyStr)? changeAgency,
    TResult Function(String phoneStr)? changePhone,
    TResult Function(String emailStr)? changeEmail,
    TResult Function(Agency agency)? addNewAgency,
    TResult Function()? getUserInfo,
    TResult Function()? editUserInfo,
    required TResult orElse(),
  }) {
    if (editUserInfo != null) {
      return editUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeAgency value) changeAgency,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_AddNewAgency value) addNewAgency,
    required TResult Function(_GetUserInfo value) getUserInfo,
    required TResult Function(_EditUserInfo value) editUserInfo,
  }) {
    return editUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeAgency value)? changeAgency,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_AddNewAgency value)? addNewAgency,
    TResult Function(_GetUserInfo value)? getUserInfo,
    TResult Function(_EditUserInfo value)? editUserInfo,
    required TResult orElse(),
  }) {
    if (editUserInfo != null) {
      return editUserInfo(this);
    }
    return orElse();
  }
}

abstract class _EditUserInfo implements ProfileEvent {
  const factory _EditUserInfo() = _$_EditUserInfo;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required UserInfo userInfo,
      required List<Agency> agencyList,
      required bool getSuccess,
      required bool isSubmitting,
      required bool isGetting,
      required bool showErrorMessage,
      required Option<Either<ProfileFailure, Unit>> failureOrOption}) {
    return _ProfileState(
      userInfo: userInfo,
      agencyList: agencyList,
      getSuccess: getSuccess,
      isSubmitting: isSubmitting,
      isGetting: isGetting,
      showErrorMessage: showErrorMessage,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  UserInfo get userInfo => throw _privateConstructorUsedError;
  List<Agency> get agencyList => throw _privateConstructorUsedError;
  bool get getSuccess => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {UserInfo userInfo,
      List<Agency> agencyList,
      bool getSuccess,
      bool isSubmitting,
      bool isGetting,
      bool showErrorMessage,
      Option<Either<ProfileFailure, Unit>> failureOrOption});

  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? agencyList = freezed,
    Object? getSuccess = freezed,
    Object? isSubmitting = freezed,
    Object? isGetting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      agencyList: agencyList == freezed
          ? _value.agencyList
          : agencyList // ignore: cast_nullable_to_non_nullable
              as List<Agency>,
      getSuccess: getSuccess == freezed
          ? _value.getSuccess
          : getSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get userInfo {
    return $UserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserInfo userInfo,
      List<Agency> agencyList,
      bool getSuccess,
      bool isSubmitting,
      bool isGetting,
      bool showErrorMessage,
      Option<Either<ProfileFailure, Unit>> failureOrOption});

  @override
  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? agencyList = freezed,
    Object? getSuccess = freezed,
    Object? isSubmitting = freezed,
    Object? isGetting = freezed,
    Object? showErrorMessage = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_ProfileState(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      agencyList: agencyList == freezed
          ? _value.agencyList
          : agencyList // ignore: cast_nullable_to_non_nullable
              as List<Agency>,
      getSuccess: getSuccess == freezed
          ? _value.getSuccess
          : getSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.userInfo,
      required this.agencyList,
      required this.getSuccess,
      required this.isSubmitting,
      required this.isGetting,
      required this.showErrorMessage,
      required this.failureOrOption});

  @override
  final UserInfo userInfo;
  @override
  final List<Agency> agencyList;
  @override
  final bool getSuccess;
  @override
  final bool isSubmitting;
  @override
  final bool isGetting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<ProfileFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'ProfileState(userInfo: $userInfo, agencyList: $agencyList, getSuccess: $getSuccess, isSubmitting: $isSubmitting, isGetting: $isGetting, showErrorMessage: $showErrorMessage, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)) &&
            (identical(other.agencyList, agencyList) ||
                const DeepCollectionEquality()
                    .equals(other.agencyList, agencyList)) &&
            (identical(other.getSuccess, getSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.getSuccess, getSuccess)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isGetting, isGetting) ||
                const DeepCollectionEquality()
                    .equals(other.isGetting, isGetting)) &&
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
      const DeepCollectionEquality().hash(userInfo) ^
      const DeepCollectionEquality().hash(agencyList) ^
      const DeepCollectionEquality().hash(getSuccess) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
          {required UserInfo userInfo,
          required List<Agency> agencyList,
          required bool getSuccess,
          required bool isSubmitting,
          required bool isGetting,
          required bool showErrorMessage,
          required Option<Either<ProfileFailure, Unit>> failureOrOption}) =
      _$_ProfileState;

  @override
  UserInfo get userInfo => throw _privateConstructorUsedError;
  @override
  List<Agency> get agencyList => throw _privateConstructorUsedError;
  @override
  bool get getSuccess => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isGetting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
