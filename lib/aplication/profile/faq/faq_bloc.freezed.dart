// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaqEventTearOff {
  const _$FaqEventTearOff();

  _GetFaq getFaq() {
    return const _GetFaq();
  }
}

/// @nodoc
const $FaqEvent = _$FaqEventTearOff();

/// @nodoc
mixin _$FaqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res> implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  final FaqEvent _value;
  // ignore: unused_field
  final $Res Function(FaqEvent) _then;
}

/// @nodoc
abstract class _$GetFaqCopyWith<$Res> {
  factory _$GetFaqCopyWith(_GetFaq value, $Res Function(_GetFaq) then) =
      __$GetFaqCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFaqCopyWithImpl<$Res> extends _$FaqEventCopyWithImpl<$Res>
    implements _$GetFaqCopyWith<$Res> {
  __$GetFaqCopyWithImpl(_GetFaq _value, $Res Function(_GetFaq) _then)
      : super(_value, (v) => _then(v as _GetFaq));

  @override
  _GetFaq get _value => super._value as _GetFaq;
}

/// @nodoc

class _$_GetFaq implements _GetFaq {
  const _$_GetFaq();

  @override
  String toString() {
    return 'FaqEvent.getFaq()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFaq);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
  }) {
    return getFaq();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
  }) {
    return getFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(this);
    }
    return orElse();
  }
}

abstract class _GetFaq implements FaqEvent {
  const factory _GetFaq() = _$_GetFaq;
}

/// @nodoc
class _$FaqStateTearOff {
  const _$FaqStateTearOff();

  _FaqState call(
      {required List<Faq> faq,
      required bool isGetting,
      required bool getSuccess,
      required Option<Either<ProfileFailure, Unit>> failureOrOption}) {
    return _FaqState(
      faq: faq,
      isGetting: isGetting,
      getSuccess: getSuccess,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $FaqState = _$FaqStateTearOff();

/// @nodoc
mixin _$FaqState {
  List<Faq> get faq => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  bool get getSuccess => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqStateCopyWith<FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res>;
  $Res call(
      {List<Faq> faq,
      bool isGetting,
      bool getSuccess,
      Option<Either<ProfileFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res> implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  final FaqState _value;
  // ignore: unused_field
  final $Res Function(FaqState) _then;

  @override
  $Res call({
    Object? faq = freezed,
    Object? isGetting = freezed,
    Object? getSuccess = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      faq: faq == freezed
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      getSuccess: getSuccess == freezed
          ? _value.getSuccess
          : getSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$FaqStateCopyWith<$Res> implements $FaqStateCopyWith<$Res> {
  factory _$FaqStateCopyWith(_FaqState value, $Res Function(_FaqState) then) =
      __$FaqStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Faq> faq,
      bool isGetting,
      bool getSuccess,
      Option<Either<ProfileFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$FaqStateCopyWithImpl<$Res> extends _$FaqStateCopyWithImpl<$Res>
    implements _$FaqStateCopyWith<$Res> {
  __$FaqStateCopyWithImpl(_FaqState _value, $Res Function(_FaqState) _then)
      : super(_value, (v) => _then(v as _FaqState));

  @override
  _FaqState get _value => super._value as _FaqState;

  @override
  $Res call({
    Object? faq = freezed,
    Object? isGetting = freezed,
    Object? getSuccess = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_FaqState(
      faq: faq == freezed
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      getSuccess: getSuccess == freezed
          ? _value.getSuccess
          : getSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrOption: failureOrOption == freezed
          ? _value.failureOrOption
          : failureOrOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_FaqState implements _FaqState {
  const _$_FaqState(
      {required this.faq,
      required this.isGetting,
      required this.getSuccess,
      required this.failureOrOption});

  @override
  final List<Faq> faq;
  @override
  final bool isGetting;
  @override
  final bool getSuccess;
  @override
  final Option<Either<ProfileFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'FaqState(faq: $faq, isGetting: $isGetting, getSuccess: $getSuccess, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FaqState &&
            (identical(other.faq, faq) ||
                const DeepCollectionEquality().equals(other.faq, faq)) &&
            (identical(other.isGetting, isGetting) ||
                const DeepCollectionEquality()
                    .equals(other.isGetting, isGetting)) &&
            (identical(other.getSuccess, getSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.getSuccess, getSuccess)) &&
            (identical(other.failureOrOption, failureOrOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrOption, failureOrOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(faq) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(getSuccess) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$FaqStateCopyWith<_FaqState> get copyWith =>
      __$FaqStateCopyWithImpl<_FaqState>(this, _$identity);
}

abstract class _FaqState implements FaqState {
  const factory _FaqState(
          {required List<Faq> faq,
          required bool isGetting,
          required bool getSuccess,
          required Option<Either<ProfileFailure, Unit>> failureOrOption}) =
      _$_FaqState;

  @override
  List<Faq> get faq => throw _privateConstructorUsedError;
  @override
  bool get isGetting => throw _privateConstructorUsedError;
  @override
  bool get getSuccess => throw _privateConstructorUsedError;
  @override
  Option<Either<ProfileFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FaqStateCopyWith<_FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}
