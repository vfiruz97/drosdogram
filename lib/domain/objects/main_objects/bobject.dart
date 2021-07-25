import 'dart:convert';

Bobject bobjectFromJson(String str) =>
    Bobject.fromJson(json.decode(str) as Map<String, dynamic>);

String bobjectToJson(Bobject data) => json.encode(data.toJson());

class Bobject {
  Bobject({
    required this.id,
    required this.name,
    required this.address,
    required this.status,
    required this.type,
    required this.registration,
    required this.area,
    required this.price,
    required this.hypothec,
    required this.image,
    required this.addImaage,
  });

  final String id;
  final String name;
  final String address;
  final String status;
  final String type;
  final String registration;
  final String area;
  final String price;
  final String hypothec;
  final String image;
  final List<String> addImaage;

  Bobject copyWith({
    String? id,
    String? name,
    String? address,
    String? status,
    String? type,
    String? registration,
    String? area,
    String? price,
    String? hypothec,
    String? image,
    List<String>? addImaage,
  }) =>
      Bobject(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        status: status ?? this.status,
        type: type ?? this.type,
        registration: registration ?? this.registration,
        area: area ?? this.area,
        price: price ?? this.price,
        hypothec: hypothec ?? this.hypothec,
        image: image ?? this.image,
        addImaage: addImaage ?? this.addImaage,
      );

  factory Bobject.fromJson(Map<String, dynamic> json) => Bobject(
        id: json["id"] == null ? '' : json["id"].toString(),
        name: json["name"] == null ? '' : json["name"].toString(),
        address: json["address"] == null ? '' : json["address"].toString(),
        status: json["status"] == null ? '' : json["status"].toString(),
        type: json["type"] == null ? '' : json["type"].toString(),
        registration:
            json["registration"] == null ? '' : json["registration"].toString(),
        area: json["area"] == null ? '' : json["area"].toString(),
        price: json["price"] == null ? '' : json["price"].toString(),
        hypothec: json["hypothec"] == null ? '' : json["hypothec"].toString(),
        image: json["image"] == null ? '' : json["image"].toString(),
        addImaage: json["add_imaage"] == null
            ? []
            : List<String>.from((json["add_imaage"] as List).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "status": status,
        "type": type,
        "registration": registration,
        "area": area,
        "price": price,
        "hypothec": hypothec,
        "image": image,
        "add_imaage": addImaage.isEmpty
            ? null
            : List<dynamic>.from(addImaage.map((x) => x)),
      };
}
