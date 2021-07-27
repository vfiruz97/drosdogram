import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/objects/main_objects/hypothec.dart';
import 'package:drosdogram/domain/objects/main_objects/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'hypothec_bloc.freezed.dart';
part 'hypothec_event.dart';
part 'hypothec_state.dart';

@injectable
class HypothecBloc extends Bloc<HypothecEvent, HypothecState> {
  HypothecBloc(
    this._repository,
  ) : super(HypothecState.initial());

  final IObjectRepository _repository;

  @override
  Stream<HypothecState> mapEventToState(
    HypothecEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield state.copyWith(
          hypothec: state.hypothec.copyWith(name: Name(e.nameStr)),
          failureOrOption: none(),
        );
      },
      changeObjectName: (e) async* {
        yield state.copyWith(
          hypothec: state.hypothec.copyWith(objectName: e.objectNameStr),
          failureOrOption: none(),
        );
      },
      changePhone: (e) async* {
        yield state.copyWith(
          hypothec: state.hypothec.copyWith(phone: Phone(e.phoneStr)),
          failureOrOption: none(),
        );
      },
      changeRequest: (e) async* {
        yield state.copyWith(
          hypothec: state.hypothec.copyWith(request: Request(e.requestStr)),
          failureOrOption: none(),
        );
      },
      submit: (_) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrOption: none(),
        );

        final isName = state.hypothec.name.isValid();
        final isPhone = state.hypothec.phone.isValid();
        final isRequest = state.hypothec.request.isValid();

        if (isName && isPhone && isRequest) {
          final _res = await _repository.createHypothec(
            name: state.hypothec.name.getOrCrash(),
            phone: state.hypothec.phone.getOrCrash(),
            request: state.hypothec.request.getOrCrash(),
            objectName: state.hypothec.objectName,
          );

          yield _res.fold(
            (failure) => state.copyWith(
              isSubmitting: false,
              failureOrOption: some(left(failure)),
            ),
            (_) => state.copyWith(
              isSubmitting: false,
              failureOrOption: some(right(unit)),
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
