import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/auth_failure.dart';
import 'package:drosdogram/domain/auth/i_auth_facade.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'password_recovery_event.dart';
part 'password_recovery_state.dart';
part 'password_recovery_bloc.freezed.dart';

@injectable
class PasswordRecoveryBloc
    extends Bloc<PasswordRecoveryEvent, PasswordRecoveryState> {
  PasswordRecoveryBloc(
    this._authFacade,
  ) : super(PasswordRecoveryState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<PasswordRecoveryState> mapEventToState(
    PasswordRecoveryEvent event,
  ) async* {
    yield* event.map(
      changedPhone: (e) async* {
        yield state.copyWith(
          phone: Phone(e.phoneStr),
          failureOrSuccessOption: none(),
        );
      },
      submitSmsCode: (e) async* {
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        final response = await _authFacade.passwordRecovery(
          phone: state.phone,
        );

        yield response.fold(
          (failure) => state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: some(left(failure)),
          ),
          (_) => state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
