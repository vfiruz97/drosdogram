// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'object_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectEventTearOff {
  const _$ObjectEventTearOff();

  _GetObjects getObjects() {
    return const _GetObjects();
  }
}

/// @nodoc
const $ObjectEvent = _$ObjectEventTearOff();

/// @nodoc
mixin _$ObjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getObjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getObjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjects value) getObjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjects value)? getObjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectEventCopyWith<$Res> {
  factory $ObjectEventCopyWith(
          ObjectEvent value, $Res Function(ObjectEvent) then) =
      _$ObjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectEventCopyWithImpl<$Res> implements $ObjectEventCopyWith<$Res> {
  _$ObjectEventCopyWithImpl(this._value, this._then);

  final ObjectEvent _value;
  // ignore: unused_field
  final $Res Function(ObjectEvent) _then;
}

/// @nodoc
abstract class _$GetObjectsCopyWith<$Res> {
  factory _$GetObjectsCopyWith(
          _GetObjects value, $Res Function(_GetObjects) then) =
      __$GetObjectsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetObjectsCopyWithImpl<$Res> extends _$ObjectEventCopyWithImpl<$Res>
    implements _$GetObjectsCopyWith<$Res> {
  __$GetObjectsCopyWithImpl(
      _GetObjects _value, $Res Function(_GetObjects) _then)
      : super(_value, (v) => _then(v as _GetObjects));

  @override
  _GetObjects get _value => super._value as _GetObjects;
}

/// @nodoc

class _$_GetObjects implements _GetObjects {
  const _$_GetObjects();

  @override
  String toString() {
    return 'ObjectEvent.getObjects()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetObjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getObjects,
  }) {
    return getObjects();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getObjects,
    required TResult orElse(),
  }) {
    if (getObjects != null) {
      return getObjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjects value) getObjects,
  }) {
    return getObjects(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjects value)? getObjects,
    required TResult orElse(),
  }) {
    if (getObjects != null) {
      return getObjects(this);
    }
    return orElse();
  }
}

abstract class _GetObjects implements ObjectEvent {
  const factory _GetObjects() = _$_GetObjects;
}

/// @nodoc
class _$ObjectStateTearOff {
  const _$ObjectStateTearOff();

  _ObjectState call(
      {required List<Bobject> objects,
      required bool isGetting,
      required Option<Either<BobjectFailure, Unit>> failureOrOption}) {
    return _ObjectState(
      objects: objects,
      isGetting: isGetting,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $ObjectState = _$ObjectStateTearOff();

/// @nodoc
mixin _$ObjectState {
  List<Bobject> get objects => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectStateCopyWith<ObjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectStateCopyWith<$Res> {
  factory $ObjectStateCopyWith(
          ObjectState value, $Res Function(ObjectState) then) =
      _$ObjectStateCopyWithImpl<$Res>;
  $Res call(
      {List<Bobject> objects,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$ObjectStateCopyWithImpl<$Res> implements $ObjectStateCopyWith<$Res> {
  _$ObjectStateCopyWithImpl(this._value, this._then);

  final ObjectState _value;
  // ignore: unused_field
  final $Res Function(ObjectState) _then;

  @override
  $Res call({
    Object? objects = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Bobject>,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BobjectFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectStateCopyWith<$Res>
    implements $ObjectStateCopyWith<$Res> {
  factory _$ObjectStateCopyWith(
          _ObjectState value, $Res Function(_ObjectState) then) =
      __$ObjectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Bobject> objects,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$ObjectStateCopyWithImpl<$Res> extends _$ObjectStateCopyWithImpl<$Res>
    implements _$ObjectStateCopyWith<$Res> {
  __$ObjectStateCopyWithImpl(
      _ObjectState _value, $Res Function(_ObjectState) _then)
      : super(_value, (v) => _then(v as _ObjectState));

  @override
  _ObjectState get _value => super._value as _ObjectState;

  @override
  $Res call({
    Object? objects = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_ObjectState(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Bobject>,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BobjectFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ObjectState implements _ObjectState {
  const _$_ObjectState(
      {required this.objects,
      required this.isGetting,
      required this.failureOrOption});

  @override
  final List<Bobject> objects;
  @override
  final bool isGetting;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'ObjectState(objects: $objects, isGetting: $isGetting, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectState &&
            (identical(other.objects, objects) ||
                const DeepCollectionEquality()
                    .equals(other.objects, objects)) &&
            (identical(other.isGetting, isGetting) ||
                const DeepCollectionEquality()
                    .equals(other.isGetting, isGetting)) &&
            (identical(other.failureOrOption, failureOrOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrOption, failureOrOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objects) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$ObjectStateCopyWith<_ObjectState> get copyWith =>
      __$ObjectStateCopyWithImpl<_ObjectState>(this, _$identity);
}

abstract class _ObjectState implements ObjectState {
  const factory _ObjectState(
          {required List<Bobject> objects,
          required bool isGetting,
          required Option<Either<BobjectFailure, Unit>> failureOrOption}) =
      _$_ObjectState;

  @override
  List<Bobject> get objects => throw _privateConstructorUsedError;
  @override
  bool get isGetting => throw _privateConstructorUsedError;
  @override
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObjectStateCopyWith<_ObjectState> get copyWith =>
      throw _privateConstructorUsedError;
}
