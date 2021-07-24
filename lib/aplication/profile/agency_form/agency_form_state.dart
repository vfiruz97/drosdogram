part of 'agency_form_bloc.dart';

@freezed
class AgencyFormState with _$AgencyFormState {
  const factory AgencyFormState({
    required Agency agency,
    required bool isSubmitting,
    required bool showErrorMessage,
    required Option<Either<ProfileFailure, Agency>> failureOrOption,
  }) = _AgencyFormState;

  factory AgencyFormState.initial() => AgencyFormState(
        agency: Agency.empty(),
        isSubmitting: false,
        showErrorMessage: false,
        failureOrOption: none(),
      );
}
