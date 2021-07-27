import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/objects/main_objects/value_objects.dart';

OrderM orderFromJson(String str) =>
    OrderM.fromJson(json.decode(str) as Map<String, dynamic>);

String orderToJson(OrderM data) => json.encode(data.toJson());

class OrderM {
  OrderM({
    required this.name,
    required this.phone,
    required this.request,
    required this.objectId,
    required this.images,
  });

  final Name name;
  final Phone phone;
  final Request request;
  final String objectId;
  final List<String> images;

  OrderM copyWith({
    Name? name,
    Phone? phone,
    Request? request,
    String? objectId,
    List<String>? images,
  }) =>
      OrderM(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        request: request ?? this.request,
        objectId: objectId ?? this.objectId,
        images: images ?? this.images,
      );

  factory OrderM.empty() => OrderM(
        name: Name(''),
        phone: Phone('+7'),
        request: Request(''),
        objectId: '',
        images: [],
      );

  factory OrderM.fromJson(Map<String, dynamic> json) => OrderM(
        name: json["name"] == null ? Name('') : Name(json["name"].toString()),
        phone: json["phone"] == null
            ? Phone('+7')
            : Phone(json["phone"].toString()),
        request: json["request"] == null
            ? Request('')
            : Request(json["request"].toString()),
        objectId: json["object_id"] == null ? '' : json["object_id"].toString(),
        images: json["images"] == null
            ? []
            : List<String>.from((json["images"] as List).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name.isValid() ? name.getOrCrash() : '',
        "phone": phone.isValid() ? phone.getOrCrash() : '',
        "request": request.isValid() ? request.getOrCrash() : '',
        "object_id": objectId,
        "images": images.isEmpty
            ? null
            : List<dynamic>.from(images.map((i) =>
                "data:image/${p.extension(i.toString()).substring(1)};base64,${base64.encode(File(i.toString()).readAsBytesSync())}")),
      };
}
