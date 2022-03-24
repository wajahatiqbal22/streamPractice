import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stream_practice/controllers/home_controller.dart';

class ChatFirstCol extends StatelessWidget {
  ChatFirstCol({Key? key}) : super(key: key);
  final messageCon = TextEditingController();
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              homeController.addDummyMessages(type: 1);
            },
            child: const Text("Add 50 messages"),
          ),
        ],
        title: const Text("First Stream"),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: GetBuilder<HomeController>(
                initState: (_) {
                  homeController.openChatStream();
                },
                builder: (_) => ListView.builder(
                  itemCount: _.chats.length,
                  itemBuilder: (context, index) {
                    final message = _.chats[index];
                    return Text(message.chatMessage);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 10,
                child: TextField(
                  controller: messageCon,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
