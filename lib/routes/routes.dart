import 'package:get/get.dart';
import 'package:stream_practice/screens/chat_first_col.dart';
import 'package:stream_practice/screens/chat_second_col.dart';
import 'package:stream_practice/screens/home_screen.dart';
import 'package:stream_practice/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = "/splashScreen";
  static const String homeScreen = "/homeScreen";
  static const String chatFirstCol = "/chatFirstCol";
  static const String chatSecondCol = "/chatSecondCol";

  static List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: chatFirstCol, page: () => ChatFirstCol()),
    GetPage(name: chatSecondCol, page: () => ChatSecondCol()),
  ];
}
