import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/services/beneficiary_service.dart';

class BeneficiaryCounter extends StatelessWidget {
  final BeneficiaryService beneficiaryService = Get.find<BeneficiaryService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: beneficiaryService.decrement,
          ),
          Text(
            '${beneficiaryService.beneficiaryCount.value}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: beneficiaryService.increment,
          ),
        ],
      );
    });
  }
}
