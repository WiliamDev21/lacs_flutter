import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/dashboard_service.dart';

class DashboardLogoSwitcher extends StatelessWidget {
  final DashboardService dashboardService = Get.find<DashboardService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        children: [
          GestureDetector(
            onTap: () => dashboardService.switchCompany('LACS'),
            child: Image.asset(
              dashboardService.getLogo(compact: true),
              height: 40,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () => dashboardService.switchCompany('DORNISH'),
            child: Image.asset(
              dashboardService.getLogo(compact: false),
              height: 40,
            ),
          ),
        ],
      );
    });
  }
}
