import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/auth/auth_failure.dart';
import 'package:drosdogram/domain/auth/user.dart';
import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:drosdogram/domain/core/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<AuthToken>> getUserAuthToken();
  Future<Option<AuthToken>> removeIsRegComplete();
  Future<Either<AuthFailure, AuthToken>> signIn({
    required Phone phone,
    required SmsCode smsCode,
  });
  Future<Either<AuthFailure, Unit>> passwordRecovery({
    required Phone phone,
  });
  Future<void> signOut();
  Future<Either<AuthFailure, User>> submitFirstStepRegistration({
    required Name name,
    required Phone phone,
  });
  Future<Either<AuthFailure, User>> submitSecondStepRegistration({
    required User user,
  });
}
