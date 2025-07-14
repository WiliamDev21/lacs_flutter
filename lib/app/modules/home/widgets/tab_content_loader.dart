import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/tab_service.dart';

class TabContentLoader extends StatelessWidget {
  final List<Widget> tabContents;

  const TabContentLoader({Key? key, required this.tabContents})
    : super(key: key);

  TabService get tabService => Get.find<TabService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return tabContents[tabService.activeTab.value];
    });
  }
}
