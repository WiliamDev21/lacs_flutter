import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/loading_service.dart';

class CustomLoadingOverlay extends StatelessWidget {
  final LoadingService loadingService = Get.put(LoadingService());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (!loadingService.isLoading.value) return const SizedBox.shrink();
      return Container(
        color: Colors.black.withOpacity(0.5),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 20),
              Text(
                loadingService.message.value,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      );
    });
  }
}
