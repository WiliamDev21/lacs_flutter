import 'package:get/get.dart';
import 'package:lacs_flutter/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void login() {
    Get.off(HomeView());
  }
}
