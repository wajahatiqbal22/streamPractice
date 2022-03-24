import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:stream_practice/models/chat.dart';
import 'package:stream_practice/network/network.dart';
import 'package:stream_practice/screens/dialogues.dart';

class HomeController extends GetxController {
  final network = Network();

  StreamSubscription? chatSubscription;

  List<Chat> chats = List.empty(growable: true);

  int limit = 20;

  Future<void> addDummyMessages({required int type}) async {
    String collection = "";
    if (type == 1) {
      collection = "Chat1";
    } else {
      collection = "Chat2";
    }
    try {
      showLoadingDailogue();
      final dummyMessages = List.generate(
        50,
        (index) => Chat(
          chatId:
              "${index + 1}${DateTime.fromMillisecondsSinceEpoch(1).toString()}",
          chatMessage: "Message ${index + 1}",
          time: Timestamp.now(),
        ),
      ).toList();

      await network.uploadDummyMessages(
          collection: collection, messages: dummyMessages);
      Get.back();
    } catch (e) {
      Get.back();
      log(e.toString());
      throw e;
    }
  }

  void openChatStream() {
    chatSubscription = network.chatSubscription(limit).listen((event) {
      chats.clear();
      chats.addAll(event);
      update();
    });
  }
}
