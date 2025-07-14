import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/tab_service.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;

  const CustomTabBar({Key? key, required this.tabs}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    final TabService tabService = Get.find<TabService>();
    return Obx(() {
      return Row(
        children: List.generate(tabs.length, (index) {
          final isActive = tabService.activeTab.value == index;
          return Expanded(
            child: GestureDetector(
              onTap: () => tabService.setTab(index),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isActive
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  tabs[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: isActive ? Colors.white : Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      );
    });
  }
}
