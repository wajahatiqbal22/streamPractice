import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stream_practice/controllers/home_controller.dart';

class ChatSecondCol extends StatelessWidget {
  ChatSecondCol({Key? key}) : super(key: key);
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
              homeController.addDummyMessages(type: 2);
            },
            child: const Text("Add 50 messages"),
          ),
        ],
        title: const Text("Second Stream"),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
