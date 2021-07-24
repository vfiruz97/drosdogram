// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserInfoTearOff {
  const _$UserInfoTearOff();

  _UserInfo call(
      {required int id,
      required Name name,
      required EmailAddress? email,
      required Agency? agency,
      required String? image,
      required int isComplete,
      required Phone phone}) {
    return _UserInfo(
      id: id,
      name: name,
      email: email,
      agency: agency,
      image: image,
      isComplete: isComplete,
      phone: phone,
    );
  }
}

/// @nodoc
const $UserInfo = _$UserInfoTearOff();

/// @nodoc
mixin _$UserInfo {
  int get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  EmailAddress? get email => throw _privateConstructorUsedError;
  Agency? get agency => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get isComplete => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Name name,
      EmailAddress? email,
      Agency? agency,
      String? image,
      int isComplete,
      Phone phone});

  $AgencyCopyWith<$Res>? get agency;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  final UserInfo _value;
  // ignore: unused_field
  final $Res Function(UserInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? agency = freezed,
    Object? image = freezed,
    Object? isComplete = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      agency: agency == freezed
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as Agency?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as int,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }

  @override
  $AgencyCopyWith<$Res>? get agency {
    if (_value.agency == null) {
      return null;
    }

    return $AgencyCopyWith<$Res>(_value.agency!, (value) {
      return _then(_value.copyWith(agency: value));
    });
  }
}

/// @nodoc
abstract class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) then) =
      __$UserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Name name,
      EmailAddress? email,
      Agency? agency,
      String? image,
      int isComplete,
      Phone phone});

  @override
  $AgencyCopyWith<$Res>? get agency;
}

/// @nodoc
class __$UserInfoCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(_UserInfo _value, $Res Function(_UserInfo) _then)
      : super(_value, (v) => _then(v as _UserInfo));

  @override
  _UserInfo get _value => super._value as _UserInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? agency = freezed,
    Object? image = freezed,
    Object? isComplete = freezed,
    Object? phone = freezed,
  }) {
    return _then(_UserInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      agency: agency == freezed
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as Agency?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as int,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_UserInfo implements _UserInfo {
  const _$_UserInfo(
      {required this.id,
      required this.name,
      required this.email,
      required this.agency,
      required this.image,
      required this.isComplete,
      required this.phone});

  @override
  final int id;
  @override
  final Name name;
  @override
  final EmailAddress? email;
  @override
  final Agency? agency;
  @override
  final String? image;
  @override
  final int isComplete;
  @override
  final Phone phone;

  @override
  String toString() {
    return 'UserInfo(id: $id, name: $name, email: $email, agency: $agency, image: $image, isComplete: $isComplete, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.agency, agency) ||
                const DeepCollectionEquality().equals(other.agency, agency)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(agency) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(isComplete) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {required int id,
      required Name name,
      required EmailAddress? email,
      required Agency? agency,
      required String? image,
      required int isComplete,
      required Phone phone}) = _$_UserInfo;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  EmailAddress? get email => throw _privateConstructorUsedError;
  @override
  Agency? get agency => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int get isComplete => throw _privateConstructorUsedError;
  @override
  Phone get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
