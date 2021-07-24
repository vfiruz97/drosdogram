part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UserInfo userInfo,
    required List<Agency> agencyList,
    required bool getSuccess,
    required bool isSubmitting,
    required bool isGetting,
    required bool showErrorMessage,
    required Option<Either<ProfileFailure, Unit>> failureOrOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        userInfo: UserInfo.empty(),
        agencyList: [],
        getSuccess: false,
        isGetting: false,
        isSubmitting: false,
        showErrorMessage: false,
        failureOrOption: none(),
      );
}
