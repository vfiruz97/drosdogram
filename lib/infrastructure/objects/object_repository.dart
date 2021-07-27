import 'dart:convert';

import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';
import 'package:drosdogram/domain/objects/main_objects/order.dart';
import 'package:drosdogram/domain/objects/main_objects/slider.dart';
import 'package:drosdogram/infrastructure/http_client/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IObjectRepository)
class ObjectRepository implements IObjectRepository {
  @override
  Future<Either<BobjectFailure, List<Bobject>>> getObjectList() async {
    try {
      final _response = await http.post(objectUrl);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200) {
        final _objects = (_body as List)
            .map((e) => Bobject.fromJson(e as Map<String, dynamic>))
            .toList();
        return right(_objects);
      } else {
        return left(BobjectFailure.badResponse(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const BobjectFailure.badResponse("Ошибка в сети"));
    }
  }

  @override
  Future<Either<BobjectFailure, List<Slider>>> getSliders() async {
    try {
      final _response = await http.post(sliderUrl);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200) {
        final _sliders = (_body as List)
            .map((e) => Slider.fromJson(e as Map<String, dynamic>))
            .toList();
        return right(_sliders);
      } else {
        return left(BobjectFailure.badResponse(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const BobjectFailure.badResponse("Ошибка в сети"));
    }
  }

  @override
  Future<Either<BobjectFailure, Unit>> createHypothec({
    required String name,
    required String phone,
    required String request,
    required String objectName,
  }) async {
    try {
      final data = {
        "name": name,
        "phone": phone,
        "request": request,
        "object_name": objectName,
      };
      final _response = await http.post(hypothecUrl, data: data);
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200 && _body['success'] == true) {
        return right(unit);
      } else {
        return left(BobjectFailure.badResponse(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const BobjectFailure.badResponse("Ошибка в сети"));
    }
  }

  @override
  Future<Either<BobjectFailure, Unit>> createOrder(
      {required OrderM order}) async {
    try {
      final data = order.toJson();
      print(data);
      final _response = await http.post(addRequestUrl, data: data);
      final _body = jsonDecode(_response.toString());
      print(_body);
      if (_response.statusCode == 200 && _body['success'] == true) {
        return right(unit);
      } else {
        return left(BobjectFailure.badResponse(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const BobjectFailure.badResponse("Ошибка в сети"));
    }
  }

  @override
  Future<Either<BobjectFailure, List<AgentRequest>>> getAgentRequests(
      {String objectId = "0"}) async {
    try {
      print("objectId $objectId");
      final _response = await http.post(agentRequestUrl, data: {
        "object_id": objectId,
      });
      final _body = jsonDecode(_response.toString());
      if (_response.statusCode == 200) {
        final _requests = (_body as List)
            .map((e) => AgentRequest.fromJson(e as Map<String, dynamic>))
            .toList();
        return right(_requests);
      } else {
        return left(BobjectFailure.badResponse(
          _body['notice'] != null
              ? _body['notice'].toString()
              : "Произашло не известная ошибка",
        ));
      }
    } catch (e) {
      return left(const BobjectFailure.badResponse("Ошибка в сети"));
    }
  }
}
