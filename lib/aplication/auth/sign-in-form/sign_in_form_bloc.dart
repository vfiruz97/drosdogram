import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:drosdogram/domain/auth/auth_failure.dart';
import 'package:drosdogram/domain/auth/i_auth_facade.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(
    this._authFacade,
  ) : super(SignInFormState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: Phone(e.phoneStr),
          failureOrSuccessOption: none(),
        );
      },
      smsCodeChanged: (e) async* {
        yield state.copyWith(
          smsCode: SmsCode(e.smsStr),
          failureOrSuccessOption: none(),
        );
      },
      submitSignIn: (e) async* {
        yield state.copyWith(
          showError: true,
          isSubmiting: true,
          failureOrSuccessOption: none(),
        );

        final response = await _authFacade.signIn(
          phone: state.phone,
          smsCode: state.smsCode,
        );

        yield response.fold(
          (failure) => state.copyWith(
            isSubmiting: false,
            failureOrSuccessOption: some(left(failure)),
          ),
          (_) => state.copyWith(
            isSubmiting: false,
            failureOrSuccessOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
