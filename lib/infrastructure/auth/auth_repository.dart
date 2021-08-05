import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:drosdogram/domain/core/errors.dart';
import 'package:drosdogram/infrastructure/http_client/http_client.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/infrastructure/database/file_storage/file_storage.dart';

@LazySingleton()
class AuthRepository {
  final FileStorage fileStorage;
  final String key = "auth-token";
  final String isRegCompleteKey = "is-reg-complete";
  String? authToken;

  AuthRepository(
    this.fileStorage,
  ) {
    cacheAuthToken();
  }

  Future<void> cacheAuthToken() async {
    try {
      authToken ??= await getAuthToken();
      http.token = authToken;
    } catch (e) {
      authToken = null;
    }
  }

  Future<String> getAuthToken() async {
    try {
      final String token = await fileStorage.getRequest(key);
      return token;
    } catch (e) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<void> setAuthToken(String token) async {
    try {
      await fileStorage.setRequest(key, token);
    } catch (e) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<void> removeAuthToken() async {
    try {
      await fileStorage.removeRequest(key);
    } catch (e) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<String> getRegIsComplete() async {
    try {
      final String value = await fileStorage.getRequest(isRegCompleteKey);
      return value;
    } catch (e) {
      return "1";
    }
  }

  Future<void> setRegIsComplete(String value) async {
    try {
      await fileStorage.setRequest(isRegCompleteKey, value);
    } catch (e) {
      throw UnexpectedFileStorageError();
    }
  }

  Future<void> removeRegIsComplete() async {
    try {
      await fileStorage.removeRequest(isRegCompleteKey);
    } catch (e) {
      //throw UnexpectedFileStorageError();
    }
  }

  Future<dynamic> signIn(String phone, String smsCode) async {
    try {
      final _bytes = utf8.encode("$phone:$smsCode");
      final _token = base64.encode(_bytes);
      http.token = _token;

      final Response response = await http.post(authUrl);
      final body = jsonDecode(response.toString());
      if (response.statusCode == 200 && body['success'] == true) {
        return body;
      } else {
        throw ApiWrongResponse(
          msg: body is Map<String, dynamic> && body.containsKey('notice')
              ? body['notice'].toString()
              : "Произашло не известная ошибка",
        );
      }
    } catch (e) {
      throw ApiWrongResponse(msg: e.toString());
    }
  }

  Future<dynamic> sendSmsCode(String phone) async {
    try {
      final Response response = await http.post(recoveryUrl, data: {
        "phone": phone,
      });
      final body = jsonDecode(response.toString());

      if (response.statusCode == 200 && body['success'] == true) {
        return body;
      } else {
        throw ApiWrongResponse(
          msg: body is Map<String, dynamic> && body.containsKey('notice')
              ? body['notice'].toString()
              : "Произашло не известная ошибка",
        );
      }
    } catch (e) {
      throw ApiWrongResponse(msg: e.toString());
    }
  }

  Future<dynamic> sendFirstStepRegister(String name, String phone) async {
    try {
      final Map<String, dynamic> data = {
        'step': 1,
        'name': name,
        'phone': phone,
        'password': '',
      };
      final Response response = await http.post(regUrl, data: data);
      final body = jsonDecode(response.toString());
      if (response.statusCode == 200 && body['success'] == true) {
        return body;
      } else {
        throw ApiWrongResponse(
          msg: body is Map<String, dynamic> && body.containsKey('notice')
              ? body['notice'].toString()
              : "Произашло не известная ошибка",
        );
      }
    } catch (e) {
      throw ApiWrongResponse(msg: e.toString());
    }
  }

  Future<dynamic> sendSecondStepRegister(
      String name, String phone, String smsCode) async {
    try {
      final Map<String, dynamic> data = {
        'step': 2,
        'name': name,
        'phone': phone,
        'password': smsCode,
      };
      final Response response = await http.post(regUrl, data: data);
      final body = jsonDecode(response.toString());

      if (response.statusCode == 200 && body['success'] == true) {
        return body;
      } else {
        throw ApiWrongResponse(
          msg: body is Map<String, dynamic> && body.containsKey('notice')
              ? body['notice'].toString()
              : "Произашло не известная ошибка",
        );
      }
    } catch (e) {
      throw ApiWrongResponse(msg: e.toString());
    }
  }
}
