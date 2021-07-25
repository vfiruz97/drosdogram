import 'dart:convert';

Slider sliderFromJson(String str) =>
    Slider.fromJson(json.decode(str) as Map<String, dynamic>);

String? sliderToJson(Slider data) => json.encode(data.toJson());

class Slider {
  Slider({
    required this.content,
    required this.id,
    required this.image,
    required this.isPop,
    required this.link,
    required this.linkText,
    required this.name,
  });

  final String content;
  final String id;
  final String image;
  final String isPop;
  final String link;
  final String linkText;
  final String name;

  Slider copyWith({
    String? content,
    String? id,
    String? image,
    String? isPop,
    String? link,
    String? linkText,
    String? name,
  }) =>
      Slider(
        content: content ?? this.content,
        id: id ?? this.id,
        image: image ?? this.image,
        isPop: isPop ?? this.isPop,
        link: link ?? this.link,
        linkText: linkText ?? this.linkText,
        name: name ?? this.name,
      );

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        content: json["content"] == null ? '' : json["content"].toString(),
        id: json["id"] == null ? '' : json["id"].toString(),
        image: json["image"] == null ? '' : json["image"].toString(),
        isPop: json["is_pop"] == null ? '' : json["is_pop"].toString(),
        link: json["link"] == null ? '' : json["link"].toString(),
        linkText: json["link_text"] == null ? '' : json["link_text"].toString(),
        name: json["name"] == null ? '' : json["name"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "content": content,
        "id": id,
        "image": image,
        "is_pop": isPop,
        "link": link,
        "link_text": linkText,
        "name": name,
      };
}
