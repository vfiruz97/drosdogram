import 'dart:convert';
import 'dart:io';

import 'package:drosdogram/domain/auth/value_objects.dart';
import 'package:drosdogram/domain/profile/agency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
part 'user_info.freezed.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    required int id,
    required Name name,
    required EmailAddress? email,
    required Agency? agency,
    required String? image,
    required int isComplete,
    required Phone phone,
  }) = _UserInfo;

  factory UserInfo.empty() => UserInfo(
        id: 0,
        name: Name(''),
        email: EmailAddress(''),
        agency: null,
        image: null,
        isComplete: 0,
        phone: Phone(''),
      );

  factory UserInfo.fromJsonC(Map<String, dynamic> json) => UserInfo(
        id: int.parse(json['id'].toString()),
        name: Name(json['name'].toString()),
        email: json['email'] == null
            ? null
            : EmailAddress(json['email'].toString()),
        agency: json['agency'] == null
            ? null
            : Agency(
                id: json['agency_id'] == null
                    ? 0
                    : int.parse(json['agency_id'].toString()),
                name: Name(json['agency'].toString()),
              ),
        image: json['image']?.toString(),
        isComplete: int.parse(json['is_complete'].toString()),
        phone: Phone(json['phone'].toString()),
      );
}

extension UserInfoX on UserInfo {
  Map<String, dynamic> toMap() => {
        "id": id,
        "is_complete": isComplete,
        "name": name.getOrCrash(),
        "email": email!.getOrCrash(),
        "phone": phone.getOrCrash(),
        "agency_id": agency != null ? agency!.id : null,
        "agency": agency != null && agency!.name.isValid()
            ? agency!.name.getOrCrash()
            : null,
        "image": (image != null && !image!.startsWith('http'))
            ? "data:image/${p.extension(image.toString()).substring(1)};base64,${base64.encode(File(image.toString()).readAsBytesSync())}"
            : null,
      };
}
