import 'package:get/get.dart';

class CustomScrollbarService extends GetxService {
  final RxBool isActive = false.obs;

  void showScrollbar() {
    isActive.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      isActive.value = false;
    });
  }
}
