part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.changeImage(String imagePath) = _ChangeImage;
  const factory ProfileEvent.changeName(String nameStr) = _ChangeName;
  const factory ProfileEvent.changeAgency(String agencyStr) = _ChangeAgency;
  const factory ProfileEvent.changePhone(String phoneStr) = _ChangePhone;
  const factory ProfileEvent.changeEmail(String emailStr) = _ChangeEmail;
  const factory ProfileEvent.addNewAgency(Agency agency) = _AddNewAgency;
  const factory ProfileEvent.getUserInfo() = _GetUserInfo;
  const factory ProfileEvent.editUserInfo() = _EditUserInfo;
}