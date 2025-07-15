import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'widgets/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Row(
        children: [
          Sidebar(controller: controller),
          // Main content
          Expanded(child: controller.currentRightPanelView.value),
        ],
      ),
    );
  }
}
