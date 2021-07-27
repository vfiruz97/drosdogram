import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/profile/faq.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:drosdogram/domain/profile/i_user_repository.dart';
import 'package:drosdogram/domain/profile/profile_failure.dart';
import 'package:injectable/injectable.dart';

part 'faq_bloc.freezed.dart';
part 'faq_event.dart';
part 'faq_state.dart';

@injectable
class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqBloc(
    this._userRepository,
  ) : super(FaqState.initial());

  final IUserRepository _userRepository;

  @override
  Stream<FaqState> mapEventToState(
    FaqEvent event,
  ) async* {
    yield* event.map(
      getFaq: (e) async* {
        yield state.copyWith(
          isGetting: true,
          failureOrOption: none(),
        );

        final _faq = await _userRepository.getFaq();

        yield _faq.fold(
          (failure) => state.copyWith(
            getSuccess: false,
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (faq) => state.copyWith(
            faq: faq,
            getSuccess: true,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
