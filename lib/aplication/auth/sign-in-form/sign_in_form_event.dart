part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.phoneChanged(String phoneStr) = _PhoneChanged;
  const factory SignInFormEvent.smsCodeChanged(String smsStr) = _SmsCodeChanged;
  const factory SignInFormEvent.submitSignIn() = _SubmitSignIn;
}
