class Message {
  Message({
    required this.id,
    required this.message,
    required this.image,
    required this.callId,
    required this.isCall,
    required this.name,
    required this.messageClass,
    required this.ava,
    required this.published,
  });

  final String id;
  final String message;
  final String image;
  final String callId;
  final String isCall;
  final String name;
  final String messageClass;
  final String ava;
  final String published;

  Message copyWith({
    String? id,
    String? message,
    String? image,
    String? callId,
    String? isCall,
    String? name,
    String? messageClass,
    String? ava,
    String? published,
  }) =>
      Message(
        id: id ?? this.id,
        message: message ?? this.message,
        image: image ?? this.image,
        callId: callId ?? this.callId,
        isCall: isCall ?? this.isCall,
        name: name ?? this.name,
        messageClass: messageClass ?? this.messageClass,
        ava: ava ?? this.ava,
        published: published ?? this.published,
      );

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"] == null ? '' : json["id"].toString(),
        message: json["message"] == null ? '' : json["message"].toString(),
        image: json["image"] == null ? '' : json["image"].toString(),
        callId: json["call_id"] == null ? '' : json["call_id"].toString(),
        isCall: json["is_call"] == null ? '' : json["is_call"].toString(),
        name: json["name"] == null ? '' : json["name"].toString(),
        messageClass: json["class"] == null ? '' : json["class"].toString(),
        ava: json["ava"] == null ? '' : json["ava"].toString(),
        published:
            json["published"] == null ? '' : json["published"].toString(),
      );
}
