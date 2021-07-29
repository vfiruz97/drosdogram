import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'chat_message_bloc.freezed.dart';
part 'chat_message_event.dart';
part 'chat_message_state.dart';

@injectable
class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState> {
  ChatMessageBloc(
    this._repository,
  ) : super(ChatMessageState.initial());

  final IObjectRepository _repository;

  @override
  Stream<ChatMessageState> mapEventToState(
    ChatMessageEvent event,
  ) async* {
    yield* event.map(
      getMessages: (e) async* {
        yield state.copyWith(
          isGetting: state.messages.isEmpty,
          isGettingPrev: true,
          failureOrUnitOption: none(),
        );

        final _res = await _repository.getPrevMessage(
          requestId: e.requestId,
          lastMessageId: state.lastPrevMessageId,
        );

        yield _res.fold(
          (failure) => state.copyWith(
            isGetting: false,
            isGettingPrev: false,
            failureOrUnitOption: some(left(failure)),
          ),
          (messages) => state.copyWith(
            messages: messages.reversed.toList(),
            lastMessageId: messages.first.id,
            lastPrevMessageId: messages.last.id,
            isGetting: false,
            isGettingPrev: false,
            failureOrUnitOption: some(right(unit)),
          ),
        );
      },
      getPrevMessages: (e) async* {
        if (!state.isGetting &&
            state.lastGottenMessageId != state.lastPrevMessageId) {
          yield state.copyWith(
            isGettingPrev: true,
            failureOrUnitOption: none(),
          );

          final _res = await _repository.getPrevMessage(
            requestId: e.requestId,
            lastMessageId: state.lastPrevMessageId,
          );

          yield _res.fold(
            (failure) => state.copyWith(
              isGetting: false,
              lastGottenMessageId: state.lastPrevMessageId,
              isGettingPrev: false,
              failureOrUnitOption: some(left(failure)),
            ),
            (messages) => messages.isNotEmpty
                ? state.copyWith(
                    messages: messages.reversed.toList() + state.messages,
                    lastGottenMessageId: state.lastPrevMessageId,
                    lastPrevMessageId: messages.last.id,
                    isGetting: false,
                    isGettingPrev: false,
                    failureOrUnitOption: some(right(unit)))
                : state.copyWith(
                    lastGottenMessageId: state.lastPrevMessageId,
                    isGetting: false,
                    isGettingPrev: false,
                    failureOrUnitOption: some(right(unit))),
          );
        }
      },
      changeFile: (e) async* {
        yield state.copyWith(
          file: e.filePath,
          failureOrUnitOption: none(),
        );
      },
      changeMessage: (e) async* {
        yield state.copyWith(
          message: e.message,
          failureOrUnitOption: none(),
        );
      },
      sendMessage: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrUnitOption: none(),
        );

        final isMessage = state.message.isNotEmpty;
        if (isMessage) {
          final _res = await _repository.sendChatMessage(
            requestId: e.requestId,
            message: state.message,
            lastMessageId: state.lastMessageId,
            file: state.file,
          );

          if (_res.isRight()) {
            final newMessage = _res.getOrElse(() => []);
            yield state.copyWith(
              isSubmitting: true,
              messages: List<Message>.from(state.messages + newMessage),
              lastMessageId: newMessage.isNotEmpty
                  ? newMessage.first.id
                  : state.lastMessageId,
              message: '',
              file: null,
              failureOrUnitOption: none(),
            );
          }

          yield _res.fold(
            (failure) => state.copyWith(
              isSubmitting: false,
              failureOrUnitOption: some(left(failure)),
            ),
            (_) => state,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          failureOrUnitOption: none(),
        );
      },
    );
  }
}
