import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:drosdogram/domain/profile/i_user_repository.dart';
import 'package:drosdogram/domain/profile/profile_failure.dart';
import 'package:injectable/injectable.dart';

part 'agency_form_bloc.freezed.dart';
part 'agency_form_event.dart';
part 'agency_form_state.dart';

@injectable
class AgencyFormBloc extends Bloc<AgencyFormEvent, AgencyFormState> {
  AgencyFormBloc(
    this._userRepository,
  ) : super(AgencyFormState.initial());

  final IUserRepository _userRepository;

  @override
  Stream<AgencyFormState> mapEventToState(
    AgencyFormEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield state.copyWith(
          agency: state.agency.copyWith(name: Name(e.nameStr)),
          failureOrOption: none(),
        );
      },
      changeEmail: (e) async* {
        yield state.copyWith(
          agency: state.agency.copyWith(emailAddress: EmailAddress(e.emailStr)),
          failureOrOption: none(),
        );
      },
      submit: (_) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrOption: none(),
        );

        final isName = state.agency.name.isValid();
        final bool isEmail;
        if (state.agency.emailAddress != null) {
          isEmail = state.agency.emailAddress!.isValid();
        } else {
          isEmail = false;
        }

        if (isName && isEmail) {
          final _response = await _userRepository.createAgency(
            name: state.agency.name.getOrCrash(),
            emailAddress: state.agency.emailAddress!.getOrCrash(),
          );

          yield _response.fold(
            (failure) => state.copyWith(
              isSubmitting: false,
              failureOrOption: some(left(failure)),
            ),
            (agency) => state.copyWith(
              agency: agency,
              isSubmitting: false,
              failureOrOption: some(right(agency)),
            ),
          );
        }

        yield state.copyWith(
          showErrorMessage: true,
          isSubmitting: false,
          failureOrOption: none(),
        );
      },
    );
  }
}
