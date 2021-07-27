class Faq {
  Faq({
    required this.id,
    required this.name,
    required this.content,
  });

  final String id;
  final String name;
  final String content;

  Faq copyWith({
    String? id,
    String? name,
    String? content,
  }) =>
      Faq(
        id: id ?? this.id,
        name: name ?? this.name,
        content: content ?? this.content,
      );

  factory Faq.empty() => Faq(
        id: '',
        name: '',
        content: '',
      );

  factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        id: json["id"] == null ? '' : json["id"].toString(),
        name: json["name"] == null ? '' : json["name"].toString(),
        content: json["content"] == null ? '' : json["content"].toString(),
      );
}
