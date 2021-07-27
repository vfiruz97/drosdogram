part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    required List<Faq> faq,
    required bool isGetting,
    required bool getSuccess,
    required Option<Either<ProfileFailure, Unit>> failureOrOption,
  }) = _FaqState;

  factory FaqState.initial() => FaqState(
        faq: [],
        isGetting: false,
        getSuccess: false,
        failureOrOption: none(),
      );
}
