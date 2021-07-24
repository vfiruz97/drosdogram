part of 'password_recovery_bloc.dart';

@freezed
class PasswordRecoveryState with _$PasswordRecoveryState {
  const factory PasswordRecoveryState({
    required Phone phone,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _PasswordRecoveryState;

  factory PasswordRecoveryState.initial() => PasswordRecoveryState(
        phone: Phone('+7'),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
