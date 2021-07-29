// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatMessageEventTearOff {
  const _$ChatMessageEventTearOff();

  _GetMessages getMessages({required String requestId}) {
    return _GetMessages(
      requestId: requestId,
    );
  }

  _GetPrevMessages getPrevMessages({required String requestId}) {
    return _GetPrevMessages(
      requestId: requestId,
    );
  }

  _ChangeMessage changeMessage(String message) {
    return _ChangeMessage(
      message,
    );
  }

  _ChangeFile changeFile(String filePath) {
    return _ChangeFile(
      filePath,
    );
  }

  _SendMessage sendMessage({required String requestId}) {
    return _SendMessage(
      requestId: requestId,
    );
  }
}

/// @nodoc
const $ChatMessageEvent = _$ChatMessageEventTearOff();

/// @nodoc
mixin _$ChatMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEventCopyWith<$Res> {
  factory $ChatMessageEventCopyWith(
          ChatMessageEvent value, $Res Function(ChatMessageEvent) then) =
      _$ChatMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatMessageEventCopyWithImpl<$Res>
    implements $ChatMessageEventCopyWith<$Res> {
  _$ChatMessageEventCopyWithImpl(this._value, this._then);

  final ChatMessageEvent _value;
  // ignore: unused_field
  final $Res Function(ChatMessageEvent) _then;
}

/// @nodoc
abstract class _$GetMessagesCopyWith<$Res> {
  factory _$GetMessagesCopyWith(
          _GetMessages value, $Res Function(_GetMessages) then) =
      __$GetMessagesCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class __$GetMessagesCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res>
    implements _$GetMessagesCopyWith<$Res> {
  __$GetMessagesCopyWithImpl(
      _GetMessages _value, $Res Function(_GetMessages) _then)
      : super(_value, (v) => _then(v as _GetMessages));

  @override
  _GetMessages get _value => super._value as _GetMessages;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_GetMessages(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMessages implements _GetMessages {
  const _$_GetMessages({required this.requestId});

  @override
  final String requestId;

  @override
  String toString() {
    return 'ChatMessageEvent.getMessages(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetMessages &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$GetMessagesCopyWith<_GetMessages> get copyWith =>
      __$GetMessagesCopyWithImpl<_GetMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) {
    return getMessages(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatMessageEvent {
  const factory _GetMessages({required String requestId}) = _$_GetMessages;

  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetMessagesCopyWith<_GetMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPrevMessagesCopyWith<$Res> {
  factory _$GetPrevMessagesCopyWith(
          _GetPrevMessages value, $Res Function(_GetPrevMessages) then) =
      __$GetPrevMessagesCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class __$GetPrevMessagesCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res>
    implements _$GetPrevMessagesCopyWith<$Res> {
  __$GetPrevMessagesCopyWithImpl(
      _GetPrevMessages _value, $Res Function(_GetPrevMessages) _then)
      : super(_value, (v) => _then(v as _GetPrevMessages));

  @override
  _GetPrevMessages get _value => super._value as _GetPrevMessages;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_GetPrevMessages(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPrevMessages implements _GetPrevMessages {
  const _$_GetPrevMessages({required this.requestId});

  @override
  final String requestId;

  @override
  String toString() {
    return 'ChatMessageEvent.getPrevMessages(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPrevMessages &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$GetPrevMessagesCopyWith<_GetPrevMessages> get copyWith =>
      __$GetPrevMessagesCopyWithImpl<_GetPrevMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) {
    return getPrevMessages(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) {
    if (getPrevMessages != null) {
      return getPrevMessages(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return getPrevMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getPrevMessages != null) {
      return getPrevMessages(this);
    }
    return orElse();
  }
}

abstract class _GetPrevMessages implements ChatMessageEvent {
  const factory _GetPrevMessages({required String requestId}) =
      _$_GetPrevMessages;

  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPrevMessagesCopyWith<_GetPrevMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeMessageCopyWith<$Res> {
  factory _$ChangeMessageCopyWith(
          _ChangeMessage value, $Res Function(_ChangeMessage) then) =
      __$ChangeMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ChangeMessageCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res>
    implements _$ChangeMessageCopyWith<$Res> {
  __$ChangeMessageCopyWithImpl(
      _ChangeMessage _value, $Res Function(_ChangeMessage) _then)
      : super(_value, (v) => _then(v as _ChangeMessage));

  @override
  _ChangeMessage get _value => super._value as _ChangeMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ChangeMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeMessage implements _ChangeMessage {
  const _$_ChangeMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatMessageEvent.changeMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ChangeMessageCopyWith<_ChangeMessage> get copyWith =>
      __$ChangeMessageCopyWithImpl<_ChangeMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) {
    return changeMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) {
    if (changeMessage != null) {
      return changeMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return changeMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (changeMessage != null) {
      return changeMessage(this);
    }
    return orElse();
  }
}

abstract class _ChangeMessage implements ChatMessageEvent {
  const factory _ChangeMessage(String message) = _$_ChangeMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeMessageCopyWith<_ChangeMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeFileCopyWith<$Res> {
  factory _$ChangeFileCopyWith(
          _ChangeFile value, $Res Function(_ChangeFile) then) =
      __$ChangeFileCopyWithImpl<$Res>;
  $Res call({String filePath});
}

/// @nodoc
class __$ChangeFileCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res>
    implements _$ChangeFileCopyWith<$Res> {
  __$ChangeFileCopyWithImpl(
      _ChangeFile _value, $Res Function(_ChangeFile) _then)
      : super(_value, (v) => _then(v as _ChangeFile));

  @override
  _ChangeFile get _value => super._value as _ChangeFile;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_ChangeFile(
      filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeFile implements _ChangeFile {
  const _$_ChangeFile(this.filePath);

  @override
  final String filePath;

  @override
  String toString() {
    return 'ChatMessageEvent.changeFile(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFile &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filePath);

  @JsonKey(ignore: true)
  @override
  _$ChangeFileCopyWith<_ChangeFile> get copyWith =>
      __$ChangeFileCopyWithImpl<_ChangeFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) {
    return changeFile(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) {
    if (changeFile != null) {
      return changeFile(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return changeFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (changeFile != null) {
      return changeFile(this);
    }
    return orElse();
  }
}

abstract class _ChangeFile implements ChatMessageEvent {
  const factory _ChangeFile(String filePath) = _$_ChangeFile;

  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeFileCopyWith<_ChangeFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_SendMessage(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.requestId});

  @override
  final String requestId;

  @override
  String toString() {
    return 'ChatMessageEvent.sendMessage(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId) getMessages,
    required TResult Function(String requestId) getPrevMessages,
    required TResult Function(String message) changeMessage,
    required TResult Function(String filePath) changeFile,
    required TResult Function(String requestId) sendMessage,
  }) {
    return sendMessage(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId)? getMessages,
    TResult Function(String requestId)? getPrevMessages,
    TResult Function(String message)? changeMessage,
    TResult Function(String filePath)? changeFile,
    TResult Function(String requestId)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetPrevMessages value) getPrevMessages,
    required TResult Function(_ChangeMessage value) changeMessage,
    required TResult Function(_ChangeFile value) changeFile,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetPrevMessages value)? getPrevMessages,
    TResult Function(_ChangeMessage value)? changeMessage,
    TResult Function(_ChangeFile value)? changeFile,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatMessageEvent {
  const factory _SendMessage({required String requestId}) = _$_SendMessage;

  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatMessageStateTearOff {
  const _$ChatMessageStateTearOff();

  _ChatMessageState call(
      {required List<Message> messages,
      required bool isSubmitting,
      required String message,
      required bool isGetting,
      required bool isGettingPrev,
      String? lastMessageId,
      String? lastGottenMessageId,
      String? lastPrevMessageId,
      required Option<Either<BobjectFailure, Unit>> failureOrUnitOption,
      String? file}) {
    return _ChatMessageState(
      messages: messages,
      isSubmitting: isSubmitting,
      message: message,
      isGetting: isGetting,
      isGettingPrev: isGettingPrev,
      lastMessageId: lastMessageId,
      lastGottenMessageId: lastGottenMessageId,
      lastPrevMessageId: lastPrevMessageId,
      failureOrUnitOption: failureOrUnitOption,
      file: file,
    );
  }
}

/// @nodoc
const $ChatMessageState = _$ChatMessageStateTearOff();

/// @nodoc
mixin _$ChatMessageState {
  List<Message> get messages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isGetting => throw _privateConstructorUsedError;
  bool get isGettingPrev => throw _privateConstructorUsedError;
  String? get lastMessageId => throw _privateConstructorUsedError;
  String? get lastGottenMessageId => throw _privateConstructorUsedError;
  String? get lastPrevMessageId => throw _privateConstructorUsedError;
  Option<Either<BobjectFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageStateCopyWith<ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageStateCopyWith<$Res> {
  factory $ChatMessageStateCopyWith(
          ChatMessageState value, $Res Function(ChatMessageState) then) =
      _$ChatMessageStateCopyWithImpl<$Res>;
  $Res call(
      {List<Message> messages,
      bool isSubmitting,
      String message,
      bool isGetting,
      bool isGettingPrev,
      String? lastMessageId,
      String? lastGottenMessageId,
      String? lastPrevMessageId,
      Option<Either<BobjectFailure, Unit>> failureOrUnitOption,
      String? file});
}

/// @nodoc
class _$ChatMessageStateCopyWithImpl<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  _$ChatMessageStateCopyWithImpl(this._value, this._then);

  final ChatMessageState _value;
  // ignore: unused_field
  final $Res Function(ChatMessageState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? isSubmitting = freezed,
    Object? message = freezed,
    Object? isGetting = freezed,
    Object? isGettingPrev = freezed,
    Object? lastMessageId = freezed,
    Object? lastGottenMessageId = freezed,
    Object? lastPrevMessageId = freezed,
    Object? failureOrUnitOption = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingPrev: isGettingPrev == freezed
          ? _value.isGettingPrev
          : isGettingPrev // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessageId: lastMessageId == freezed
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastGottenMessageId: lastGottenMessageId == freezed
          ? _value.lastGottenMessageId
          : lastGottenMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPrevMessageId: lastPrevMessageId == freezed
          ? _value.lastPrevMessageId
          : lastPrevMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BobjectFailure, Unit>>,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageStateCopyWith<$Res>
    implements $ChatMessageStateCopyWith<$Res> {
  factory _$ChatMessageStateCopyWith(
          _ChatMessageState value, $Res Function(_ChatMessageState) then) =
      __$ChatMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Message> messages,
      bool isSubmitting,
      String message,
      bool isGetting,
      bool isGettingPrev,
      String? lastMessageId,
      String? lastGottenMessageId,
      String? lastPrevMessageId,
      Option<Either<BobjectFailure, Unit>> failureOrUnitOption,
      String? file});
}

/// @nodoc
class __$ChatMessageStateCopyWithImpl<$Res>
    extends _$ChatMessageStateCopyWithImpl<$Res>
    implements _$ChatMessageStateCopyWith<$Res> {
  __$ChatMessageStateCopyWithImpl(
      _ChatMessageState _value, $Res Function(_ChatMessageState) _then)
      : super(_value, (v) => _then(v as _ChatMessageState));

  @override
  _ChatMessageState get _value => super._value as _ChatMessageState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? isSubmitting = freezed,
    Object? message = freezed,
    Object? isGetting = freezed,
    Object? isGettingPrev = freezed,
    Object? lastMessageId = freezed,
    Object? lastGottenMessageId = freezed,
    Object? lastPrevMessageId = freezed,
    Object? failureOrUnitOption = freezed,
    Object? file = freezed,
  }) {
    return _then(_ChatMessageState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isGetting: isGetting == freezed
          ? _value.isGetting
          : isGetting // ignore: cast_nullable_to_non_nullable
              as bool,
      isGettingPrev: isGettingPrev == freezed
          ? _value.isGettingPrev
          : isGettingPrev // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessageId: lastMessageId == freezed
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastGottenMessageId: lastGottenMessageId == freezed
          ? _value.lastGottenMessageId
          : lastGottenMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPrevMessageId: lastPrevMessageId == freezed
          ? _value.lastPrevMessageId
          : lastPrevMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      failureOrUnitOption: failureOrUnitOption == freezed
          ? _value.failureOrUnitOption
          : failureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BobjectFailure, Unit>>,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatMessageState implements _ChatMessageState {
  const _$_ChatMessageState(
      {required this.messages,
      required this.isSubmitting,
      required this.message,
      required this.isGetting,
      required this.isGettingPrev,
      this.lastMessageId,
      this.lastGottenMessageId,
      this.lastPrevMessageId,
      required this.failureOrUnitOption,
      this.file});

  @override
  final List<Message> messages;
  @override
  final bool isSubmitting;
  @override
  final String message;
  @override
  final bool isGetting;
  @override
  final bool isGettingPrev;
  @override
  final String? lastMessageId;
  @override
  final String? lastGottenMessageId;
  @override
  final String? lastPrevMessageId;
  @override
  final Option<Either<BobjectFailure, Unit>> failureOrUnitOption;
  @override
  final String? file;

  @override
  String toString() {
    return 'ChatMessageState(messages: $messages, isSubmitting: $isSubmitting, message: $message, isGetting: $isGetting, isGettingPrev: $isGettingPrev, lastMessageId: $lastMessageId, lastGottenMessageId: $lastGottenMessageId, lastPrevMessageId: $lastPrevMessageId, failureOrUnitOption: $failureOrUnitOption, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessageState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isGetting, isGetting) ||
                const DeepCollectionEquality()
                    .equals(other.isGetting, isGetting)) &&
            (identical(other.isGettingPrev, isGettingPrev) ||
                const DeepCollectionEquality()
                    .equals(other.isGettingPrev, isGettingPrev)) &&
            (identical(other.lastMessageId, lastMessageId) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessageId, lastMessageId)) &&
            (identical(other.lastGottenMessageId, lastGottenMessageId) ||
                const DeepCollectionEquality()
                    .equals(other.lastGottenMessageId, lastGottenMessageId)) &&
            (identical(other.lastPrevMessageId, lastPrevMessageId) ||
                const DeepCollectionEquality()
                    .equals(other.lastPrevMessageId, lastPrevMessageId)) &&
            (identical(other.failureOrUnitOption, failureOrUnitOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUnitOption, failureOrUnitOption)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isGetting) ^
      const DeepCollectionEquality().hash(isGettingPrev) ^
      const DeepCollectionEquality().hash(lastMessageId) ^
      const DeepCollectionEquality().hash(lastGottenMessageId) ^
      const DeepCollectionEquality().hash(lastPrevMessageId) ^
      const DeepCollectionEquality().hash(failureOrUnitOption) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageStateCopyWith<_ChatMessageState> get copyWith =>
      __$ChatMessageStateCopyWithImpl<_ChatMessageState>(this, _$identity);
}

abstract class _ChatMessageState implements ChatMessageState {
  const factory _ChatMessageState(
      {required List<Message> messages,
      required bool isSubmitting,
      required String message,
      required bool isGetting,
      required bool isGettingPrev,
      String? lastMessageId,
      String? lastGottenMessageId,
      String? lastPrevMessageId,
      required Option<Either<BobjectFailure, Unit>> failureOrUnitOption,
      String? file}) = _$_ChatMessageState;

  @override
  List<Message> get messages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isGetting => throw _privateConstructorUsedError;
  @override
  bool get isGettingPrev => throw _privateConstructorUsedError;
  @override
  String? get lastMessageId => throw _privateConstructorUsedError;
  @override
  String? get lastGottenMessageId => throw _privateConstructorUsedError;
  @override
  String? get lastPrevMessageId => throw _privateConstructorUsedError;
  @override
  Option<Either<BobjectFailure, Unit>> get failureOrUnitOption =>
      throw _privateConstructorUsedError;
  @override
  String? get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageStateCopyWith<_ChatMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
