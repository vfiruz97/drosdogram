part of 'agent_request_bloc.dart';

@freezed
class AgentRequestState with _$AgentRequestState {
  const factory AgentRequestState({
    required List<AgentRequest> requests,
    required Map<String, String> objects,
    required String selectedObjectId,
    required bool isGetting,
    required Option<Either<BobjectFailure, Unit>> failureOrOption,
  }) = _AgentRequestState;

  factory AgentRequestState.initial() => AgentRequestState(
        requests: [],
        objects: {"0" : "Все"},
        selectedObjectId: "0",
        isGetting: false,
        failureOrOption: none(),
      );
}
