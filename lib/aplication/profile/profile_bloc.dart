import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:drosdogram/domain/profile/i_user_repository.dart';
import 'package:drosdogram/domain/profile/profile_failure.dart';
import 'package:drosdogram/domain/profile/user_info.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._userRepository,
  ) : super(ProfileState.initial());

  final IUserRepository _userRepository;

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield state.copyWith(
          userInfo: state.userInfo.copyWith(name: Name(e.nameStr)),
          failureOrOption: none(),
        );
      },
      changeAgency: (e) async* {
        if (state.agencyList.any((agency) => agency.name.value.fold(
            (_) => false,
            (name) => name.toLowerCase() == e.agencyStr.toLowerCase()))) {
          final _agency = state.agencyList.firstWhere((agency) =>
              agency.name.value.fold((_) => false,
                  (name) => name.toLowerCase() == e.agencyStr.toLowerCase()));

          yield state.copyWith(
            userInfo: state.userInfo.copyWith(agency: _agency),
            failureOrOption: none(),
          );
        } else {
          yield state.copyWith(
            userInfo: state.userInfo.copyWith(
              agency: Agency(id: 0, name: Name(e.agencyStr)),
            ),
            failureOrOption: none(),
          );
        }
      },
      changeImage: (e) async* {
        yield state.copyWith(
          userInfo: state.userInfo.copyWith(image: e.imagePath),
          failureOrOption: none(),
        );
      },
      changePhone: (e) async* {
        yield state.copyWith(
          userInfo: state.userInfo.copyWith(phone: Phone(e.phoneStr)),
          failureOrOption: none(),
        );
      },
      changeEmail: (e) async* {
        yield state.copyWith(
          userInfo: state.userInfo.copyWith(email: EmailAddress(e.emailStr)),
          failureOrOption: none(),
        );
      },
      addNewAgency: (e) async* {
        state.agencyList.insert(0, e.agency);
        yield state.copyWith(
          userInfo: state.userInfo.copyWith(agency: e.agency),
          agencyList: state.agencyList,
          showErrorMessage: true,
          failureOrOption: none(),
        );
      },
      getUserInfo: (_) async* {
        yield state.copyWith(
          isGetting: true,
          failureOrOption: none(),
        );

        final _agency = await _userRepository.getAgency();

        yield state.copyWith(
          agencyList: _agency.fold((f) => [], (agencies) => agencies),
          failureOrOption: none(),
        );

        final _response = await _userRepository.getUserInfo();

        yield _response.fold(
          (failure) => state.copyWith(
            getSuccess: false,
            isGetting: false,
            failureOrOption: some(left(failure)),
          ),
          (userInfo) => state.copyWith(
            userInfo: userInfo,
            getSuccess: true,
            isGetting: false,
            failureOrOption: some(right(unit)),
          ),
        );
      },
      editUserInfo: (_) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrOption: none(),
        );

        final _user = state.userInfo;
        final isName = _user.name.isValid();
        final isPhone = _user.phone.isValid();
        final isAgency = _user.agency != null &&
            state.agencyList.any(
              (el) => el.name.value.fold(
                  (_) => false,
                  (name) =>
                      name.toLowerCase() ==
                      _user.agency!.name.getOrCrash().toLowerCase()),
            );
        // ignore: avoid_bool_literals_in_conditional_expressions
        final isEmail = _user.email != null ? _user.email!.isValid() : false;
        if (isName && isAgency && isPhone && isEmail) {
          final _response = await _userRepository.editUserInfo(user: _user);

          yield _response.fold(
            (failure) => state.copyWith(
              isSubmitting: false,
              isGetting: false,
              failureOrOption: some(left(failure)),
            ),
            (userInfo) => state.copyWith(
              userInfo: userInfo,
              getSuccess: true,
              isSubmitting: false,
              isGetting: false,
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
