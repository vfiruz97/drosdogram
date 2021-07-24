part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.initial() = _Initial;
  const factory RegisterEvent.nameChanged(String nameStr) = _NameChanged;
  const factory RegisterEvent.phoneChanged(String phoneStr) = _TelChanged;
  const factory RegisterEvent.smsCodeChanged(String smsCode) = _SmsCodeChanged;
  const factory RegisterEvent.openFirstScreen() = _OpenFirstScreen;
  const factory RegisterEvent.openSecondScreen(User user) = _OpenSecondScreen;
  const factory RegisterEvent.submitFirstPressed() = _SubmitFirstPressed;
  const factory RegisterEvent.submitSecondStepPressed() = _SubmitSecondStepPressed;
}