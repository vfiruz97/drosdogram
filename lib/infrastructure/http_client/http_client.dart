import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:drosdogram/domain/core/errors.dart';
import 'package:drosdogram/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

// url
const String regUrl = 'user/reg';
const String authUrl = 'user/auth';
const String recoveryUrl = 'user/recovery';
const String userShowUrl = 'user/show';
const String userEditUrl = 'user/edit';
const String agencyUrl = 'agency';
const String createAgencyUrl = 'agency/add';
const String objectUrl = 'object';
const String sliderUrl = 'slider';
const String hypothecUrl = 'feedback/hypothec';
const String addRequestUrl = 'request/add';
const String faqUrl = 'faq';
const String agentRequestUrl = 'request';
const String deleteRequestUrl = 'request/delete';
const String chatUrl = 'chat';

@lazySingleton
class HttpClient {
  Dio dio;
  String? _authToken;

  // ignore: unnecessary_getters_setters
  String? get token => _authToken;
  // ignore: unnecessary_getters_setters
  set token(String? token) => _authToken = token;

  HttpClient() : dio = Dio() {
    dio.options.baseUrl = 'https://drosdogram.pixelation.ru/api/';
    dio.options.contentType = Headers.jsonContentType;
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    try {
      if (_authToken != null) {
        dio.options.headers['Authorization'] = _authToken ?? '';
      }
      final Response _response = await dio.post(url, data: data);
      debugPrint("token:-: $_authToken | $url\n${DateTime.now().toString()}");
      debugPrint(data.toString());
      debugPrint(_response.toString());
      return _response;
    } catch (e) {
      debugPrint(e.toString());
      throw NetworkError();
    }
  }

  Future<Response> get(String url) async {
    try {
      if (_authToken != null) {
        dio.options.headers['Authorization'] = _authToken;
      }
      final Response _response = await dio.get(url);
      return _response;
    } catch (e) {
      throw NetworkError();
    }
  }

  Future<void> test() async {
    try {
      if (_authToken != null) {
        dio.options.headers['Authorization'] = _authToken;
      }

      final Response _response = await dio.post('chat', data: {
        'prev': true,
        'request_id': 51,
        'message_id': 221,
      });
      final _body = jsonDecode(_response.toString());
      printWrapped(_response.toString());
      if (_response.statusCode == 200 && _body['status'] == true) {
        //
      }
    } catch (e) {
      //

    }
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
  }
}

HttpClient http = getIt<HttpClient>();
