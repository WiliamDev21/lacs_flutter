import 'package:get/get.dart';

class BeneficiaryService extends GetxService {
  final RxInt beneficiaryCount = 0.obs;

  void increment() => beneficiaryCount.value++;
  void decrement() {
    if (beneficiaryCount.value > 0) beneficiaryCount.value--;
  }

  void reset() => beneficiaryCount.value = 0;
}
