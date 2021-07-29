// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agent_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgentRequestEventTearOff {
  const _$AgentRequestEventTearOff();

  _GetAgentRequests getAgentRequests() {
    return const _GetAgentRequests();
  }

  _DeleteAgentRequest deleteAgentRequest({required String requestId}) {
    return _DeleteAgentRequest(
      requestId: requestId,
    );
  }

  _ChangeObjectId changeObjectId({required String objectId}) {
    return _ChangeObjectId(
      objectId: objectId,
    );
  }
}

/// @nodoc
const $AgentRequestEvent = _$AgentRequestEventTearOff();

/// @nodoc
mixin _$AgentRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAgentRequests,
    required TResult Function(String requestId) deleteAgentRequest,
    required TResult Function(String objectId) changeObjectId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAgentRequests,
    TResult Function(String requestId)? deleteAgentRequest,
    TResult Function(String objectId)? changeObjectId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgentRequests value) getAgentRequests,
    required TResult Function(_DeleteAgentRequest value) deleteAgentRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgentRequests value)? getAgentRequests,
    TResult Function(_DeleteAgentRequest value)? deleteAgentRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRequestEventCopyWith<$Res> {
  factory $AgentRequestEventCopyWith(
          AgentRequestEvent value, $Res Function(AgentRequestEvent) then) =
      _$AgentRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgentRequestEventCopyWithImpl<$Res>
    implements $AgentRequestEventCopyWith<$Res> {
  _$AgentRequestEventCopyWithImpl(this._value, this._then);

  final AgentRequestEvent _value;
  // ignore: unused_field
  final $Res Function(AgentRequestEvent) _then;
}

/// @nodoc
abstract class _$GetAgentRequestsCopyWith<$Res> {
  factory _$GetAgentRequestsCopyWith(
          _GetAgentRequests value, $Res Function(_GetAgentRequests) then) =
      __$GetAgentRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAgentRequestsCopyWithImpl<$Res>
    extends _$AgentRequestEventCopyWithImpl<$Res>
    implements _$GetAgentRequestsCopyWith<$Res> {
  __$GetAgentRequestsCopyWithImpl(
      _GetAgentRequests _value, $Res Function(_GetAgentRequests) _then)
      : super(_value, (v) => _then(v as _GetAgentRequests));

  @override
  _GetAgentRequests get _value => super._value as _GetAgentRequests;
}

/// @nodoc

class _$_GetAgentRequests implements _GetAgentRequests {
  const _$_GetAgentRequests();

  @override
  String toString() {
    return 'AgentRequestEvent.getAgentRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAgentRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAgentRequests,
    required TResult Function(String requestId) deleteAgentRequest,
    required TResult Function(String objectId) changeObjectId,
  }) {
    return getAgentRequests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAgentRequests,
    TResult Function(String requestId)? deleteAgentRequest,
    TResult Function(String objectId)? changeObjectId,
    required TResult orElse(),
  }) {
    if (getAgentRequests != null) {
      return getAgentRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgentRequests value) getAgentRequests,
    required TResult Function(_DeleteAgentRequest value) deleteAgentRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
  }) {
    return getAgentRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgentRequests value)? getAgentRequests,
    TResult Function(_DeleteAgentRequest value)? deleteAgentRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    required TResult orElse(),
  }) {
    if (getAgentRequests != null) {
      return getAgentRequests(this);
    }
    return orElse();
  }
}

abstract class _GetAgentRequests implements AgentRequestEvent {
  const factory _GetAgentRequests() = _$_GetAgentRequests;
}

/// @nodoc
abstract class _$DeleteAgentRequestCopyWith<$Res> {
  factory _$DeleteAgentRequestCopyWith(
          _DeleteAgentRequest value, $Res Function(_DeleteAgentRequest) then) =
      __$DeleteAgentRequestCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class __$DeleteAgentRequestCopyWithImpl<$Res>
    extends _$AgentRequestEventCopyWithImpl<$Res>
    implements _$DeleteAgentRequestCopyWith<$Res> {
  __$DeleteAgentRequestCopyWithImpl(
      _DeleteAgentRequest _value, $Res Function(_DeleteAgentRequest) _then)
      : super(_value, (v) => _then(v as _DeleteAgentRequest));

  @override
  _DeleteAgentRequest get _value => super._value as _DeleteAgentRequest;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_DeleteAgentRequest(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteAgentRequest implements _DeleteAgentRequest {
  const _$_DeleteAgentRequest({required this.requestId});

  @override
  final String requestId;

  @override
  String toString() {
    return 'AgentRequestEvent.deleteAgentRequest(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteAgentRequest &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$DeleteAgentRequestCopyWith<_DeleteAgentRequest> get copyWith =>
      __$DeleteAgentRequestCopyWithImpl<_DeleteAgentRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAgentRequests,
    required TResult Function(String requestId) deleteAgentRequest,
    required TResult Function(String objectId) changeObjectId,
  }) {
    return deleteAgentRequest(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAgentRequests,
    TResult Function(String requestId)? deleteAgentRequest,
    TResult Function(String objectId)? changeObjectId,
    required TResult orElse(),
  }) {
    if (deleteAgentRequest != null) {
      return deleteAgentRequest(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgentRequests value) getAgentRequests,
    required TResult Function(_DeleteAgentRequest value) deleteAgentRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
  }) {
    return deleteAgentRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgentRequests value)? getAgentRequests,
    TResult Function(_DeleteAgentRequest value)? deleteAgentRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    required TResult orElse(),
  }) {
    if (deleteAgentRequest != null) {
      return deleteAgentRequest(this);
    }
    return orElse();
  }
}

abstract class _DeleteAgentRequest implements AgentRequestEvent {
  const factory _DeleteAgentRequest({required String requestId}) =
      _$_DeleteAgentRequest;

  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteAgentRequestCopyWith<_DeleteAgentRequest> get copyWith =>
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
    extends _$AgentRequestEventCopyWithImpl<$Res>
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
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeObjectId implements _ChangeObjectId {
  const _$_ChangeObjectId({required this.objectId});

  @override
  final String objectId;

  @override
  String toString() {
    return 'AgentRequestEvent.changeObjectId(objectId: $objectId)';
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
    required TResult Function() getAgentRequests,
    required TResult Function(String requestId) deleteAgentRequest,
    required TResult Function(String objectId) changeObjectId,
  }) {
    return changeObjectId(objectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAgentRequests,
    TResult Function(String requestId)? deleteAgentRequest,
    TResult Function(String objectId)? changeObjectId,
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
    required TResult Function(_GetAgentRequests value) getAgentRequests,
    required TResult Function(_DeleteAgentRequest value) deleteAgentRequest,
    required TResult Function(_ChangeObjectId value) changeObjectId,
  }) {
    return changeObjectId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgentRequests value)? getAgentRequests,
    TResult Function(_DeleteAgentRequest value)? deleteAgentRequest,
    TResult Function(_ChangeObjectId value)? changeObjectId,
    required TResult orElse(),
  }) {
    if (changeObjectId != null) {
      return changeObjectId(this);
    }
    return orElse();
  }
}

abstract class _ChangeObjectId implements AgentRequestEvent {
  const factory _ChangeObjectId({required String objectId}) = _$_ChangeObjectId;

  String get objectId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeObjectIdCopyWith<_ChangeObjectId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AgentRequestStateTearOff {
  const _$AgentRequestStateTearOff();

  _AgentRequestState call(
      {required List<AgentRequest> requests,
      required Map<String, String> objects,
      required String selectedObjectId,
      required bool isGetting,
      required Option<Either<BobjectFailure, Unit>> failureOrOption}) {
    return _AgentRequestState(
      requests: requests,
      objects: objects,
      selectedObjectId: selectedObjectId,
      isGetting: isGetting,
      failureOrOption: failureOrOption,
    );
  }
}

/// @nodoc
const $AgentRequestState = _$AgentRequestStateTearOff();

/// @nodoc
mixin _$AgentRequestState {
  List<AgentRequest> get requests => throw _privateConstructorUsedError;
  Map<String, String> get objects => throw _privateConstructorUsedError;
  String get selectedObjectId => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgentRequestStateCopyWith<AgentRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRequestStateCopyWith<$Res> {
  factory $AgentRequestStateCopyWith(
          AgentRequestState value, $Res Function(AgentRequestState) then) =
      _$AgentRequestStateCopyWithImpl<$Res>;
  $Res call(
      {List<AgentRequest> requests,
      Map<String, String> objects,
      String selectedObjectId,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class _$AgentRequestStateCopyWithImpl<$Res>
    implements $AgentRequestStateCopyWith<$Res> {
  _$AgentRequestStateCopyWithImpl(this._value, this._then);

  final AgentRequestState _value;
  // ignore: unused_field
  final $Res Function(AgentRequestState) _then;

  @override
  $Res call({
    Object? requests = freezed,
    Object? objects = freezed,
    Object? selectedObjectId = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_value.copyWith(
      requests: requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AgentRequest>,
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      selectedObjectId: selectedObjectId == freezed
          ? _value.selectedObjectId
          : selectedObjectId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$AgentRequestStateCopyWith<$Res>
    implements $AgentRequestStateCopyWith<$Res> {
  factory _$AgentRequestStateCopyWith(
          _AgentRequestState value, $Res Function(_AgentRequestState) then) =
      __$AgentRequestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AgentRequest> requests,
      Map<String, String> objects,
      String selectedObjectId,
      bool isGetting,
      Option<Either<BobjectFailure, Unit>> failureOrOption});
}

/// @nodoc
class __$AgentRequestStateCopyWithImpl<$Res>
    extends _$AgentRequestStateCopyWithImpl<$Res>
    implements _$AgentRequestStateCopyWith<$Res> {
  __$AgentRequestStateCopyWithImpl(
      _AgentRequestState _value, $Res Function(_AgentRequestState) _then)
      : super(_value, (v) => _then(v as _AgentRequestState));

  @override
  _AgentRequestState get _value => super._value as _AgentRequestState;

  @override
  $Res call({
    Object? requests = freezed,
    Object? objects = freezed,
    Object? selectedObjectId = freezed,
    Object? isGetting = freezed,
    Object? failureOrOption = freezed,
  }) {
    return _then(_AgentRequestState(
      requests: requests == freezed
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AgentRequest>,
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      selectedObjectId: selectedObjectId == freezed
          ? _value.selectedObjectId
          : selectedObjectId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_AgentRequestState implements _AgentRequestState {
  const _$_AgentRequestState(
      {required this.requests,
      required this.objects,
      required this.selectedObjectId,
      required this.isGetting,
      required this.failureOrOption});

  @override
  final List<AgentRequest> requests;
  @override
  final Map<String, String> objects;
  @override
  final String selectedObjectId;
  @override
  final bool isGetting;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrOption;

  @override
  String toString() {
    return 'AgentRequestState(requests: $requests, objects: $objects, selectedObjectId: $selectedObjectId, isGetting: $isGetting, failureOrOption: $failureOrOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AgentRequestState &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.objects, objects) ||
                const DeepCollectionEquality()
                    .equals(other.objects, objects)) &&
            (identical(other.selectedObjectId, selectedObjectId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedObjectId, selectedObjectId)) &&
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
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(objects) ^
      const DeepCollectionEquality().hash(selectedObjectId) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(failureOrOption);

  @JsonKey(ignore: true)
  @override
  _$AgentRequestStateCopyWith<_AgentRequestState> get copyWith =>
      __$AgentRequestStateCopyWithImpl<_AgentRequestState>(this, _$identity);
}

abstract class _AgentRequestState implements AgentRequestState {
  const factory _AgentRequestState(
          {required List<AgentRequest> requests,
          required Map<String, String> objects,
          required String selectedObjectId,
          required bool isGetting,
          required Option<Either<BobjectFailure, Unit>> failureOrOption}) =
      _$_AgentRequestState;

  @override
  List<AgentRequest> get requests => throw _privateConstructorUsedError;
  @override
  Map<String, String> get objects => throw _privateConstructorUsedError;
  @override
  String get selectedObjectId => throw _privateConstructorUsedError;
  @override
  bool get isGetting => throw _privateConstructorUsedError;
  @override
  Option<Either<BobjectFailure, Unit>> get failureOrOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgentRequestStateCopyWith<_AgentRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
