import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/slider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'slider_bloc.freezed.dart';
part 'slider_event.dart';
part 'slider_state.dart';

@injectable
class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc(
    this._repository,
  ) : super(SliderState.initial());

  final IObjectRepository _repository;

  @override
  Stream<SliderState> mapEventToState(
    SliderEvent event,
  ) async* {
    yield* event.map(
      getSliders: (_) async* {
        yield state.copyWith(isGetting: true, failureOrOption: none());

        final _res = await _repository.getSliders();
        yield _res.fold(
          (failure) => state.copyWith(
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (sliders) => state.copyWith(
            sliders: sliders,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
