class AgentRequest {
  AgentRequest({
    required this.id,
    required this.published,
    required this.clientName,
    required this.clientPhone,
    required this.object,
    required this.count,
    required this.message,
    required this.image,
  });

  final String id;
  final String published;
  final String clientName;
  final String clientPhone;
  final String object;
  final String count;
  final String message;
  final String image;

  AgentRequest copyWith({
    String? id,
    String? published,
    String? clientName,
    String? clientPhone,
    String? object,
    String? count,
    String? message,
    String? image,
  }) =>
      AgentRequest(
        id: id ?? this.id,
        published: published ?? this.published,
        clientName: clientName ?? this.clientName,
        clientPhone: clientPhone ?? this.clientPhone,
        object: object ?? this.object,
        count: count ?? this.count,
        message: message ?? this.message,
        image: image ?? this.image,
      );

  factory AgentRequest.fromJson(Map<String, dynamic> json) => AgentRequest(
        id: json["id"] == null ? '' : json["id"].toString(),
        published:
            json["published"] == null ? '' : json["published"].toString(),
        clientName:
            json["client_name"] == null ? '' : json["client_name"].toString(),
        clientPhone:
            json["client_phone"] == null ? '' : json["client_phone"].toString(),
        object: json["object"] == null ? '' : json["object"].toString(),
        count: json["count"] == null ? '' : json["count"].toString(),
        message: json["message"] == null ? '' : json["message"].toString(),
        image: json["image"] == null ? '' : json["image"].toString(),
      );
}
