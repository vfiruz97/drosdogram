import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/i_auth_facade.dart';
import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:drosdogram/domain/auth/auth_failure.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade _authFacade;

  RegisterBloc(
    this._authFacade,
  ) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield RegisterState.initial();
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(name: Name(e.nameStr)),
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(phone: Phone(e.phoneStr)),
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );
      },
      smsCodeChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(smsCode: SmsCode(e.smsCode)),
          isSubmitting: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );
      },
      openFirstScreen: (e) async* {
        yield state.copyWith(
          isSubmitting: false,
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );
      },
      openSecondScreen: (e) async* {
        yield state.copyWith(
          user: e.user,
          isSubmitting: false,
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );
      },
      submitFirstPressed: (e) async* {
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: true,
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );

        final response = await _authFacade.submitFirstStepRegistration(
          name: state.user.name,
          phone: state.user.phone,
        );

        yield response.fold(
          (failure) => state.copyWith(
            isSubmitting: false,
            successRegistred: false,
            authFailureOrSuccessOption: some(left(failure)),
          ),
          (r) => state.copyWith(
            openSecondStep: true,
            isSubmitting: false,
            successRegistred: false,
            authFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      submitSecondStepPressed: (e) async* {
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: true,
          openSecondStep: false,
          successRegistred: false,
          authFailureOrSuccessOption: none(),
        );

        final response = await _authFacade.submitSecondStepRegistration(
          user: state.user,
        );
        
        yield response.fold(
          (failure) => state.copyWith(
            isSubmitting: false,
            successRegistred: false,
            authFailureOrSuccessOption: some(left(failure)),
          ),
          (r) => state.copyWith(
            openSecondStep: true,
            isSubmitting: false,
            successRegistred: true,
            authFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
