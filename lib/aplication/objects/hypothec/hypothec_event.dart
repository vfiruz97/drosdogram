part of 'hypothec_bloc.dart';

@freezed
class HypothecEvent with _$HypothecEvent {
  const factory HypothecEvent.changeName(String nameStr) = _ChangeName;
  const factory HypothecEvent.changePhone(String phoneStr) = _ChangePhone;
  const factory HypothecEvent.changeRequest(String requestStr) = _ChangeRequest;
  const factory HypothecEvent.changeObjectName(String objectNameStr) = _ChangeObjectName;
  const factory HypothecEvent.submit() = _Submit;
}
