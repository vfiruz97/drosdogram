import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:drosdogram/domain/profile/profile_failure.dart';
import 'package:drosdogram/domain/profile/user_info.dart';

abstract class IUserRepository {
  Future<Either<ProfileFailure, UserInfo>> getUserInfo();
  Future<Either<ProfileFailure, UserInfo>> editUserInfo(
      {required UserInfo user});
  Future<Either<ProfileFailure, List<Agency>>> getAgency();
  Future<Either<ProfileFailure, Agency>> createAgency({
    required String name,
    required String emailAddress,
  });
}
