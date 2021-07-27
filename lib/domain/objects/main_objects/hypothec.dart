import 'dart:convert';

import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/objects/main_objects/value_objects.dart';

Hypothec hypothecFromJson(String str) =>
    Hypothec.fromJson(json.decode(str) as Map<String, dynamic>);

String hypothecToJson(Hypothec data) => json.encode(data.toJson());

class Hypothec {
  Hypothec({
    required this.name,
    required this.phone,
    required this.request,
    required this.objectName,
  });

  final Name name;
  final Phone phone;
  final Request request;
  final String objectName;

  Hypothec copyWith({
    Name? name,
    Phone? phone,
    Request? request,
    String? objectName,
  }) =>
      Hypothec(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        request: request ?? this.request,
        objectName: objectName ?? this.objectName,
      );

  factory Hypothec.empty() => Hypothec(
        name: Name(''),
        phone: Phone('+7'),
        request: Request(''),
        objectName: '',
      );

  factory Hypothec.fromJson(Map<String, dynamic> json) => Hypothec(
        name: json["name"] == null ? Name('') : Name(json["name"].toString()),
        phone: json["phone"] == null
            ? Phone('+7')
            : Phone(json["phone"].toString()),
        request: json["request"] == null
            ? Request('')
            : Request(json["request"].toString()),
        objectName:
            json["object_name"] == null ? '' : json["object_name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "name": name.isValid() ? name.getOrCrash() : '',
        "phone": phone.isValid() ? phone.getOrCrash() : '',
        "request": request.isValid() ? request.getOrCrash() : '',
        "object_name": objectName,
      };
}
