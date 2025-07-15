import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/altas_tabs_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/forms/persinfo_tabs_view.dart';

class HomeController extends GetxController {
  // Estado reactivo para el sidebar
  final isSidebarExpanded = false.obs;

  // Vista actual del panel derecho
  final currentRightPanelView = Rx<Widget>(PersInfoTabsView());

  //Cambio de empresa
  final selectedCompany = 'LACS'.obs;

  void setSidebarExpanded(bool expanded) => isSidebarExpanded.value = expanded;
  void toggleSidebar() => isSidebarExpanded.value = !isSidebarExpanded.value;
}

//:)
