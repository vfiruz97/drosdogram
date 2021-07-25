part of 'object_bloc.dart';

@freezed
class ObjectState with _$ObjectState {
  const factory ObjectState({
    required List<Bobject> objects,
    required bool isGetting,
    required Option<Either<BobjectFailure, Unit>> failureOrOption,
  }) = _ObjectState;

  factory ObjectState.initial() => ObjectState(
        objects: [],
        isGetting: false,
        failureOrOption: none(),
      );
}
