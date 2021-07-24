part of 'password_recovery_bloc.dart';

@freezed
class PasswordRecoveryEvent with _$PasswordRecoveryEvent {
  const factory PasswordRecoveryEvent.changedPhone(String phoneStr) =
      _ChangedPhone;
  const factory PasswordRecoveryEvent.submitSmsCode() = _SubmitSmsCode;
}
