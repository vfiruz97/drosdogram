part of 'chat_message_bloc.dart';

@freezed
class ChatMessageEvent with _$ChatMessageEvent {
  const factory ChatMessageEvent.getMessages({
    required String requestId,
  }) = _GetMessages;
  const factory ChatMessageEvent.getPrevMessages({
    required String requestId,
  }) = _GetPrevMessages;
  const factory ChatMessageEvent.changeMessage(String message) = _ChangeMessage;
  const factory ChatMessageEvent.changeFile(String filePath) = _ChangeFile;
  const factory ChatMessageEvent.sendMessage({ required String requestId,}) = _SendMessage;
}
