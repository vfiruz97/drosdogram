import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/domain/auth/auth_failure.dart';
import 'package:drosdogram/domain/core/errors.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/auth/i_auth_facade.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:drosdogram/infrastructure/auth/auth_repository.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthRepository repo;

  AuthFacade({
    required this.repo,
  });

  @override
  Future<Option<AuthToken>> getUserAuthToken() async {
    try {
      final String _token = await repo.getAuthToken();
      final _authToken = AuthToken(_token);
      if (_authToken.isValid()) {
        return some(_authToken);
      }
      return none();
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, AuthToken>> signIn({
    required Phone phone,
    required SmsCode smsCode,
  }) async {
    try {
      final String phoneStr = phone.getOrCrash();
      final String smsCodeStr = smsCode.getOrCrash();

      final response = await repo.signIn(phoneStr, smsCodeStr);

      if (response['success'] == true) {
        await repo.setAuthToken(response['token'].toString());
        final _token = await repo.getAuthToken();
        return right(AuthToken(_token));
      }

      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(AuthFailure.invalidResonse(notice: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> passwordRecovery({
    required Phone phone,
  }) async {
    try {
      final String phoneStr = phone.getOrCrash();
      await repo.sendSmsCode(phoneStr);
      return right(unit);
    } catch (e) {
      return left(AuthFailure.invalidResonse(notice: e.toString()));
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await repo.removeAuthToken();
    } catch (e) {
      throw NotAuthenticatedError();
    }
  }

  @override
  Future<Either<AuthFailure, User>> submitFirstStepRegistration(
      {required Name name, required Phone phone}) async {
    try {
      final String nameStr = name.getOrCrash();
      final String phoneStr = phone.getOrCrash();

      await repo.sendFirstStepRegister(nameStr, phoneStr);
      return right(User.empty().copyWith(name: name, phone: phone));
    } catch (e) {
      return left(AuthFailure.invalidResonse(notice: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, User>> submitSecondStepRegistration(
      {required User user}) async {
    try {
      final String nameStr = user.name.getOrCrash();
      final String phoneStr = user.phone.getOrCrash();
      final String smsCodeStr = user.smsCode.getOrCrash();

      final response =
          await repo.sendSecondStepRegister(nameStr, phoneStr, smsCodeStr);

      if (response['success'] == true) {
        await signIn(phone: user.phone, smsCode: user.smsCode);
      }

      return right(user);
    } catch (e) {
      return left(AuthFailure.invalidResonse(notice: e.toString()));
    }
  }
}
