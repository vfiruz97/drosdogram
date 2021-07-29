part of 'chat_message_bloc.dart';

@freezed
class ChatMessageState with _$ChatMessageState {
  const factory ChatMessageState({
    required List<Message> messages,
    required bool isSubmitting,
    required String message,
    required bool isGetting,
    required bool isGettingPrev,
    String? lastMessageId,
    String? lastGottenMessageId,
    String? lastPrevMessageId,
    required Option<Either<BobjectFailure, Unit>> failureOrUnitOption,
    String? file,
  }) = _ChatMessageState;

  factory ChatMessageState.initial() => ChatMessageState(
        messages: [],
        isGetting: false,
        isGettingPrev: false,
        failureOrUnitOption: none(),
        isSubmitting: false,
        message: '',
      );
}
