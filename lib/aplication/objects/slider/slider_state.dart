part of 'slider_bloc.dart';

@freezed
class SliderState with _$SliderState {
  const factory SliderState({
    required List<Slider> sliders,
    required bool isGetting,
    required Option<Either<BobjectFailure, Unit>> failureOrOption,
  }) = _ObjectState;

  factory SliderState.initial() => SliderState(
        sliders: [],
        isGetting: false,
        failureOrOption: none(),
      );
}
