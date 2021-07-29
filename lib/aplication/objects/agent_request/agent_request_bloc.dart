import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'agent_request_bloc.freezed.dart';
part 'agent_request_event.dart';
part 'agent_request_state.dart';

@injectable
class AgentRequestBloc extends Bloc<AgentRequestEvent, AgentRequestState> {
  AgentRequestBloc(
    this._repository,
  ) : super(AgentRequestState.initial());

  final IObjectRepository _repository;

  @override
  Stream<AgentRequestState> mapEventToState(
    AgentRequestEvent event,
  ) async* {
    yield* event.map(
      getAgentRequests: (_) async* {
        yield state.copyWith(
          isGetting: true,
          failureOrOption: none(),
        );

        if (state.objects.length == 1 || state.objects.isEmpty) {
          final _objects = await _repository.getObjectList();
          final Map<String, String> _obj = {"0": "Все"};
          for (final Bobject o in _objects.fold((l) => [], (_o) => _o)) {
            _obj[o.id] = o.name;
          }
          yield state.copyWith(
            objects: _obj,
            failureOrOption: none(),
          );
        }

        final _res = await _repository.getAgentRequests(
            objectId: state.selectedObjectId);
        yield _res.fold(
          (failure) => state.copyWith(
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (requests) => state.copyWith(
            requests: requests,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
      changeObjectId: (e) async* {
        yield state.copyWith(
          selectedObjectId: e.objectId,
          isGetting: true,
          failureOrOption: none(),
        );

        final _res = await _repository.getAgentRequests(objectId: e.objectId);
        yield _res.fold(
          (failure) => state.copyWith(
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (requests) => state.copyWith(
            requests: requests,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
      deleteAgentRequest: (e) async* {
        await _repository.deleteAgentRequest(requestId: e.requestId);
        add(const AgentRequestEvent.getAgentRequests());
      },
    );
  }
}
