part of 'agency_form_bloc.dart';

@freezed
class AgencyFormEvent with _$AgencyFormEvent {
  const factory AgencyFormEvent.changeEmail(String emailStr) = _ChangeEmail;
  const factory AgencyFormEvent.changeName(String nameStr) = _ChangeName;
  const factory AgencyFormEvent.submit() = _Submit;
}