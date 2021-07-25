import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/objects/main_objects/bobject.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';
import 'package:drosdogram/domain/objects/main_objects/slider.dart';

abstract class IObjectRepository {
  Future<Either<BobjectFailure, List<Bobject>>> getObjectList();
  Future<Either<BobjectFailure, List<Slider>>> getSliders();
}
