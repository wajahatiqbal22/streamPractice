import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  String chatId;
  String chatMessage;
  Timestamp time;

  Chat({required this.chatId, required this.chatMessage, required this.time});

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        chatId: json["chatId"],
        chatMessage: json["chatMessage"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "chatId": chatId,
        "chatMessage": chatMessage,
        "time": time,
      };
}
