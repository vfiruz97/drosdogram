import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/agent_request.dart';
import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/domain/objects/main_objects/message.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';
import 'package:drosdogram/domain/objects/main_objects/order.dart';
import 'package:drosdogram/domain/objects/main_objects/slider.dart';

abstract class IObjectRepository {
  Future<Either<BobjectFailure, List<Bobject>>> getObjectList();
  Future<Either<BobjectFailure, List<Slider>>> getSliders();
  Future<Either<BobjectFailure, Unit>> createHypothec({
    required String name,
    required String phone,
    required String request,
    required String objectName,
  });
  Future<Either<BobjectFailure, Unit>> createOrder({required OrderM order});
  Future<Either<BobjectFailure, List<AgentRequest>>> getAgentRequests({
    String objectId = "0",
  });
  Future<Either<BobjectFailure, Unit>> deleteAgentRequest({
    required String requestId,
  });
  Future<Either<BobjectFailure, List<Message>>> getPrevMessage({
    required String requestId,
    String? lastMessageId,
  });
  Future<Either<BobjectFailure, List<Message>>> sendChatMessage({
    required String requestId,
    String? lastMessageId,
    required String message,
    String? file,
  });
}
