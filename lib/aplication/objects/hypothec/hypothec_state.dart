part of 'hypothec_bloc.dart';

@freezed
class HypothecState with _$HypothecState {
  const factory HypothecState({
    required Hypothec hypothec,
    required bool isSubmitting,
    required bool showErrorMessage,
    required Option<Either<BobjectFailure, Unit>> failureOrOption,
  }) = _HypothecState;

  factory HypothecState.initial() => HypothecState(
        hypothec: Hypothec.empty(),
        isSubmitting: false,
        showErrorMessage: false,
        failureOrOption: none(),
      );
}
