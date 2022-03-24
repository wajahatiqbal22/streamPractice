import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:stream_practice/controllers/bindings/initial_binding.dart';
import 'package:stream_practice/routes/routes.dart';

class StreamPractice extends StatelessWidget {
  const StreamPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: Routes.splashScreen,
      getPages: Routes.getPages,
    );
  }
}
