import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'object_bloc.freezed.dart';
part 'object_event.dart';
part 'object_state.dart';

@injectable
class ObjectBloc extends Bloc<ObjectEvent, ObjectState> {
  ObjectBloc(
    this._repository,
  ) : super(ObjectState.initial());

  final IObjectRepository _repository;

  @override
  Stream<ObjectState> mapEventToState(
    ObjectEvent event,
  ) async* {
    yield* event.map(
      getObjects: (_) async* {
        yield state.copyWith(isGetting: true, failureOrOption: none());

        final _res = await _repository.getObjectList();
        yield _res.fold(
          (failure) => state.copyWith(
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (objects) => state.copyWith(
            objects: objects,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
    );
  }
}
