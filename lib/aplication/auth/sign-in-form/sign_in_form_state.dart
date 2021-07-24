part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Phone phone,
    required SmsCode smsCode,
    required bool showError,
    required bool isSubmiting,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        phone: Phone('+7'),
        smsCode: SmsCode(''),
        showError: false,
        isSubmiting: false,
        failureOrSuccessOption: none(),
      );
}
