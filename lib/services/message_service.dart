import 'package:get/get.dart';

class MessageService extends GetxService {
  void showMessage(String message, {int duration = 3000}) {
    // Implementa tu lógica de mostrar mensaje en Flutter, por ejemplo usando Snackbar
    Get.snackbar(
      'Mensaje',
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(milliseconds: duration),
    );
  }
}
