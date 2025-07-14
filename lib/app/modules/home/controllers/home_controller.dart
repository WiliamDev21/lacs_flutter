import 'package:get/get.dart';

class HomeController extends GetxController {
  // Estado reactivo para el sidebar
  final isSidebarExpanded = false.obs;

  void setSidebarExpanded(bool expanded) => isSidebarExpanded.value = expanded;
  void toggleSidebar() => isSidebarExpanded.value = !isSidebarExpanded.value;
}
