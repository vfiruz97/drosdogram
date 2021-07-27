import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:drosdogram/domain/profile/faq.dart';
import 'package:drosdogram/domain/profile/i_user_repository.dart';
import 'package:drosdogram/domain/profile/user_info.dart';
import 'package:drosdogram/domain/profile/profile_failure.dart';
import 'package:drosdogram/infrastructure/http_client/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  @override
  Future<Either<ProfileFailure, UserInfo>> getUserInfo() async {
    try {
      final _response = await http.post(userShowUrl);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200 &&
          _body != null &&
          _body is Map<String, dynamic> &&
          _body['success'] == null) {
        final _user = UserInfo.fromJsonC(_body);
        return right(_user);
      } else {
        return left(ProfileFailure.responseError(_body['notice'] == null
            ? "Ошибка от сервера"
            : _body['notice'].toString()));
      }
    } catch (e) {
      return left(const ProfileFailure.responseError("Ошибка сервера"));
    }
  }

  @override
  Future<Either<ProfileFailure, UserInfo>> editUserInfo(
      {required UserInfo user}) async {
    try {
      final Map<String, dynamic> data = user.toMap();
      final _response = await http.post(userEditUrl, data: data);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200 && _body['success'] == true) {
        return right(user);
      } else {
        return left(ProfileFailure.responseError(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const ProfileFailure.responseError("Ошибка в сети"));
    }
  }

  @override
  Future<Either<ProfileFailure, List<Agency>>> getAgency() async {
    try {
      final _response = await http.post(agencyUrl);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200) {
        final _agencies = (_body as List).map((e) => Agency(
              id: int.parse(e['id'].toString()),
              name: Name(e["name"].toString()),
            ));
        return right(_agencies.toList());
      } else {
        return right([]);
      }
    } catch (e) {
      return right([]);
    }
  }

  @override
  Future<Either<ProfileFailure, Agency>> createAgency({
    required String name,
    required String emailAddress,
  }) async {
    try {
      final data = {
        "name": name,
        "email": emailAddress,
      };
      final _response = await http.post(createAgencyUrl, data: data);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200 && _body['success'] == true) {
        return right(
          Agency(
            id: int.parse(_body['agency']['id'].toString()),
            name: Name(_body['agency']['name'].toString()),
          ),
        );
      } else {
        return left(ProfileFailure.responseError(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const ProfileFailure.responseError("Ошибка в сети"));
    }
  }

  @override
  Future<Either<ProfileFailure, List<Faq>>> getFaq() async {
    try {
      final _response = await http.post(faqUrl);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200) {
        final _faq = (_body as List)
            .map((e) => Faq.fromJson(e as Map<String, dynamic>))
            .toList();
        return right(_faq);
      } else {
        return left(ProfileFailure.responseError(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const ProfileFailure.responseError("Ошибка в сети"));
    }
  }
}
