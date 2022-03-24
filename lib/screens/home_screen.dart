import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stream_practice/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.chatFirstCol);
              },
              child: const Text("Chat first collection Screen"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.chatSecondCol);
              },
              child: const Text("Second Collection Chat Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
