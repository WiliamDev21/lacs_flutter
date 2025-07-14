import 'package:get/get.dart';

class TabService extends GetxService {
  final RxInt activeTab = 0.obs;

  void setTab(int index) {
    activeTab.value = index;
  }
}
