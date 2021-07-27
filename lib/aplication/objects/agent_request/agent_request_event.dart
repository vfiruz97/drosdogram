part of 'agent_request_bloc.dart';

@freezed
class AgentRequestEvent with _$AgentRequestEvent {
  const factory AgentRequestEvent.getAgentRequests() = _GetAgentRequests;
  const factory AgentRequestEvent.changeObjectId({required String objectId}) = _ChangeObjectId;
}
