part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required User user,
    required bool showErrorMessages,
    required bool openSecondStep,
    required bool isSubmitting,
    required bool successRegistred,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        user:  User.empty(),
        showErrorMessages: false,
        openSecondStep: false,
        isSubmitting: false,
        successRegistred: false,
        authFailureOrSuccessOption: none(),
      );
}
