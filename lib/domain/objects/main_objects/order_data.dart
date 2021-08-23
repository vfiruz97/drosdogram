import 'package:drosdogram/domain/objects/main_objects/bobject.dart';

class OrderData {
  OrderData({
    required this.bobject,
    required this.isHypotec,
  });

  final Bobject bobject;
  final bool isHypotec;
}
