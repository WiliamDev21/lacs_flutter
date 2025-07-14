import 'package:get/get.dart';

class LoadingService extends GetxService {
  final RxBool isLoading = false.obs;
  final RxString message = ''.obs;

  void showLoading(String msg) {
    message.value = msg;
    isLoading.value = true;
  }

  void hideLoading() {
    isLoading.value = false;
    message.value = '';
  }
}
