import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stream_practice/models/chat.dart';

class Network {
  final firestore = FirebaseFirestore.instance;

  StreamController _controller = StreamController();
  Future<void> uploadDummyMessages(
      {required String collection, required List<Chat> messages}) async {
    try {
      final batch = FirebaseFirestore.instance.batch();
      for (final message in messages) {
        batch.set(firestore.collection(collection).doc(message.chatId),
            message.toJson());
      }
      await batch.commit();
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }

  Stream<List<Chat>> chatSubscription(int limit) {
    // _controller = firestore.collection("path").snapshots()
    return firestore.collection("Chat1").limit(limit).snapshots().map(
        (event) => event.docs.map((e) => Chat.fromJson(e.data())).toList());
  }
}
