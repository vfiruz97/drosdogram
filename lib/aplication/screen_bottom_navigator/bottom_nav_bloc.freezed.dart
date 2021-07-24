// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bottom_nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavEventTearOff {
  const _$BottomNavEventTearOff();

  _ChangeTo changeTo({required NavScreen scr, NavScreen? prevScr}) {
    return _ChangeTo(
      scr: scr,
      prevScr: prevScr,
    );
  }
}

/// @nodoc
const $BottomNavEvent = _$BottomNavEventTearOff();

/// @nodoc
mixin _$BottomNavEvent {
  NavScreen get scr => throw _privateConstructorUsedError;
  NavScreen? get prevScr => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavScreen scr, NavScreen? prevScr) changeTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavScreen scr, NavScreen? prevScr)? changeTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTo value) changeTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTo value)? changeTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavEventCopyWith<BottomNavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavEventCopyWith<$Res> {
  factory $BottomNavEventCopyWith(
          BottomNavEvent value, $Res Function(BottomNavEvent) then) =
      _$BottomNavEventCopyWithImpl<$Res>;
  $Res call({NavScreen scr, NavScreen? prevScr});
}

/// @nodoc
class _$BottomNavEventCopyWithImpl<$Res>
    implements $BottomNavEventCopyWith<$Res> {
  _$BottomNavEventCopyWithImpl(this._value, this._then);

  final BottomNavEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavEvent) _then;

  @override
  $Res call({
    Object? scr = freezed,
    Object? prevScr = freezed,
  }) {
    return _then(_value.copyWith(
      scr: scr == freezed
          ? _value.scr
          : scr // ignore: cast_nullable_to_non_nullable
              as NavScreen,
      prevScr: prevScr == freezed
          ? _value.prevScr
          : prevScr // ignore: cast_nullable_to_non_nullable
              as NavScreen?,
    ));
  }
}

/// @nodoc
abstract class _$ChangeToCopyWith<$Res>
    implements $BottomNavEventCopyWith<$Res> {
  factory _$ChangeToCopyWith(_ChangeTo value, $Res Function(_ChangeTo) then) =
      __$ChangeToCopyWithImpl<$Res>;
  @override
  $Res call({NavScreen scr, NavScreen? prevScr});
}

/// @nodoc
class __$ChangeToCopyWithImpl<$Res> extends _$BottomNavEventCopyWithImpl<$Res>
    implements _$ChangeToCopyWith<$Res> {
  __$ChangeToCopyWithImpl(_ChangeTo _value, $Res Function(_ChangeTo) _then)
      : super(_value, (v) => _then(v as _ChangeTo));

  @override
  _ChangeTo get _value => super._value as _ChangeTo;

  @override
  $Res call({
    Object? scr = freezed,
    Object? prevScr = freezed,
  }) {
    return _then(_ChangeTo(
      scr: scr == freezed
          ? _value.scr
          : scr // ignore: cast_nullable_to_non_nullable
              as NavScreen,
      prevScr: prevScr == freezed
          ? _value.prevScr
          : prevScr // ignore: cast_nullable_to_non_nullable
              as NavScreen?,
    ));
  }
}

/// @nodoc

class _$_ChangeTo implements _ChangeTo {
  const _$_ChangeTo({required this.scr, this.prevScr});

  @override
  final NavScreen scr;
  @override
  final NavScreen? prevScr;

  @override
  String toString() {
    return 'BottomNavEvent.changeTo(scr: $scr, prevScr: $prevScr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeTo &&
            (identical(other.scr, scr) ||
                const DeepCollectionEquality().equals(other.scr, scr)) &&
            (identical(other.prevScr, prevScr) ||
                const DeepCollectionEquality().equals(other.prevScr, prevScr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scr) ^
      const DeepCollectionEquality().hash(prevScr);

  @JsonKey(ignore: true)
  @override
  _$ChangeToCopyWith<_ChangeTo> get copyWith =>
      __$ChangeToCopyWithImpl<_ChangeTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavScreen scr, NavScreen? prevScr) changeTo,
  }) {
    return changeTo(scr, prevScr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavScreen scr, NavScreen? prevScr)? changeTo,
    required TResult orElse(),
  }) {
    if (changeTo != null) {
      return changeTo(scr, prevScr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTo value) changeTo,
  }) {
    return changeTo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTo value)? changeTo,
    required TResult orElse(),
  }) {
    if (changeTo != null) {
      return changeTo(this);
    }
    return orElse();
  }
}

abstract class _ChangeTo implements BottomNavEvent {
  const factory _ChangeTo({required NavScreen scr, NavScreen? prevScr}) =
      _$_ChangeTo;

  @override
  NavScreen get scr => throw _privateConstructorUsedError;
  @override
  NavScreen? get prevScr => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeToCopyWith<_ChangeTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BottomNavStateTearOff {
  const _$BottomNavStateTearOff();

  _BottomNavState call({required NavScreen curScr, NavScreen? preScr}) {
    return _BottomNavState(
      curScr: curScr,
      preScr: preScr,
    );
  }
}

/// @nodoc
const $BottomNavState = _$BottomNavStateTearOff();

/// @nodoc
mixin _$BottomNavState {
  NavScreen get curScr => throw _privateConstructorUsedError;
  NavScreen? get preScr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
  $Res call({NavScreen curScr, NavScreen? preScr});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;

  @override
  $Res call({
    Object? curScr = freezed,
    Object? preScr = freezed,
  }) {
    return _then(_value.copyWith(
      curScr: curScr == freezed
          ? _value.curScr
          : curScr // ignore: cast_nullable_to_non_nullable
              as NavScreen,
      preScr: preScr == freezed
          ? _value.preScr
          : preScr // ignore: cast_nullable_to_non_nullable
              as NavScreen?,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavStateCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$BottomNavStateCopyWith(
          _BottomNavState value, $Res Function(_BottomNavState) then) =
      __$BottomNavStateCopyWithImpl<$Res>;
  @override
  $Res call({NavScreen curScr, NavScreen? preScr});
}

/// @nodoc
class __$BottomNavStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements _$BottomNavStateCopyWith<$Res> {
  __$BottomNavStateCopyWithImpl(
      _BottomNavState _value, $Res Function(_BottomNavState) _then)
      : super(_value, (v) => _then(v as _BottomNavState));

  @override
  _BottomNavState get _value => super._value as _BottomNavState;

  @override
  $Res call({
    Object? curScr = freezed,
    Object? preScr = freezed,
  }) {
    return _then(_BottomNavState(
      curScr: curScr == freezed
          ? _value.curScr
          : curScr // ignore: cast_nullable_to_non_nullable
              as NavScreen,
      preScr: preScr == freezed
          ? _value.preScr
          : preScr // ignore: cast_nullable_to_non_nullable
              as NavScreen?,
    ));
  }
}

/// @nodoc

class _$_BottomNavState implements _BottomNavState {
  const _$_BottomNavState({required this.curScr, this.preScr});

  @override
  final NavScreen curScr;
  @override
  final NavScreen? preScr;

  @override
  String toString() {
    return 'BottomNavState(curScr: $curScr, preScr: $preScr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavState &&
            (identical(other.curScr, curScr) ||
                const DeepCollectionEquality().equals(other.curScr, curScr)) &&
            (identical(other.preScr, preScr) ||
                const DeepCollectionEquality().equals(other.preScr, preScr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(curScr) ^
      const DeepCollectionEquality().hash(preScr);

  @JsonKey(ignore: true)
  @override
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith =>
      __$BottomNavStateCopyWithImpl<_BottomNavState>(this, _$identity);
}

abstract class _BottomNavState implements BottomNavState {
  const factory _BottomNavState(
      {required NavScreen curScr, NavScreen? preScr}) = _$_BottomNavState;

  @override
  NavScreen get curScr => throw _privateConstructorUsedError;
  @override
  NavScreen? get preScr => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BottomNavStateCopyWith<_BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}
