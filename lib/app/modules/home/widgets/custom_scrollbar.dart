import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/custom_scrollbar_service.dart';

class CustomScrollbar extends StatelessWidget {
  final CustomScrollbarService scrollbarService =
      Get.find<CustomScrollbarService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedOpacity(
        opacity: scrollbarService.isActive.value ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(right: 8),
          width: 8,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
    });
  }
}
