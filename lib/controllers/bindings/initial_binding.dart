import 'package:get/get.dart';
import 'package:stream_practice/controllers/home_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
