// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'slider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SliderEventTearOff {
  const _$SliderEventTearOff();

  _GetSliders getSliders() {
    return const _GetSliders();
  }
}

/// @nodoc
const $SliderEvent = _$SliderEventTearOff();

/// @nodoc
mixin _$SliderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSliders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSliders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSliders value) getSliders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSliders value)? getSliders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderEventCopyWith<$Res> {
  factory $SliderEventCopyWith(
          SliderEvent value, $Res Function(SliderEvent) then) =
      _$SliderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SliderEventCopyWithImpl<$Res> implements $SliderEventCopyWith<$Res> {
  _$SliderEventCopyWithImpl(this._value, this._then);

  final SliderEvent _value;
  // ignore: unused_field
  final $Res Function(SliderEvent) _then;
}

/// @nodoc
abstract class _$GetSlidersCopyWith<$Res> {
  factory _$GetSlidersCopyWith(
          _GetSliders value, $Res Function(_GetSliders) then) =
      __$GetSlidersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSlidersCopyWithImpl<$Res> extends _$SliderEventCopyWithImpl<$Res>
    implements _$GetSlidersCopyWith<$Res> {
  __$GetSlidersCopyWithImpl(
      _GetSliders _value, $Res Function(_GetSliders) _then)
      : super(_value, (v) => _then(v as _GetSliders));

  @override
  _GetSliders get _value => super._value as _GetSliders;
}

/// @nodoc

class _$_GetSliders implements _GetSliders {
  const _$_GetSliders();

  @override
  String toString() {
    return 'SliderEvent.getSliders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetSliders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSliders,
  }) {
    return getSliders();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSliders,
    required TResult orElse(),
  }) {
    if (getSliders != null) {
      return getSliders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSliders value) getSliders,
  }) {
    return getSliders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSliders value)? getSliders,
    required TResult orElse(),
  }) {
    if (getSliders != null) {
      return getSliders(this);
    }
    return orElse();
  }
}

abstract class _GetSliders implements SliderEvent {
  const factory _GetSliders() = _$_GetSliders;
}

/// @nodoc
class _$SliderStateTearOff {
  const _$SliderStateTearOff();

  _ObjectState call(
      {required List<Slider> sliders,
      required bool isGetting,
      required Option<Either<BobjectFailure, Unit>> failureOrOption}) {
    return _ObjectState(
      sliders: sliders,
      isGetting: isGetting,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $SliderState = _$SliderStateTearOff();

/// @nodoc
mixin _$SliderState {
  List<Slider> get sliders => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SliderStateCopyWith<SliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderStateCopyWith<$Res> {
  factory $SliderStateCopyWith(
          SliderState value, $Res Function(SliderState) then) =
      _$SliderStateCopyWithImpl<$Res>;
  $Res call(
      {List<Slider> sliders,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$SliderStateCopyWithImpl<$Res> implements $SliderStateCopyWith<$Res> {
  _$SliderStateCopyWithImpl(this._value, this._then);

  final SliderState _value;
  // ignore: unused_field
  final $Res Function(SliderState) _then;

  @override
  $Res call({
    Object? sliders = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<Slider>,
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
    implements $SliderStateCopyWith<$Res> {
  factory _$ObjectStateCopyWith(
          _ObjectState value, $Res Function(_ObjectState) then) =
      __$ObjectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Slider> sliders,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$ObjectStateCopyWithImpl<$Res> extends _$SliderStateCopyWithImpl<$Res>
    implements _$ObjectStateCopyWith<$Res> {
  __$ObjectStateCopyWithImpl(
      _ObjectState _value, $Res Function(_ObjectState) _then)
      : super(_value, (v) => _then(v as _ObjectState));

  @override
  _ObjectState get _value => super._value as _ObjectState;

  @override
  $Res call({
    Object? sliders = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_ObjectState(
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<Slider>,
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
      {required this.sliders,
      required this.isGetting,
      required this.failureOrOption});

  @override
  final List<Slider> sliders;
  @override
  final bool isGetting;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'SliderState(sliders: $sliders, isGetting: $isGetting, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectState &&
            (identical(other.sliders, sliders) ||
                const DeepCollectionEquality()
                    .equals(other.sliders, sliders)) &&
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
      const DeepCollectionEquality().hash(sliders) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$ObjectStateCopyWith<_ObjectState> get copyWith =>
      __$ObjectStateCopyWithImpl<_ObjectState>(this, _$identity);
}

abstract class _ObjectState implements SliderState {
  const factory _ObjectState(
          {required List<Slider> sliders,
          required bool isGetting,
          required Option<Either<BobjectFailure, Unit>> failureOrOption}) =
      _$_ObjectState;

  @override
  List<Slider> get sliders => throw _privateConstructorUsedError;
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
