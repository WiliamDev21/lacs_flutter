import 'package:get/get.dart';

class DashboardService extends GetxService {
  final RxString activeCompany = 'LACS'.obs;

  final Map<String, Map<String, String>> companyLogos = {
    'LACS': {
      'compact': 'assets/logos/LACS-Logo.png',
      'full': 'assets/logos/LACS.png',
    },
    'DORNISH': {
      'compact': 'assets/logos/DORNISH-Logo.png',
      'full': 'assets/logos/DORNISH.png',
    },
  };

  void switchCompany(String company) {
    if (companyLogos.containsKey(company)) {
      activeCompany.value = company;
    }
  }

  String getLogo({bool compact = false}) {
    final logos = companyLogos[activeCompany.value]!;
    return compact ? logos['compact']! : logos['full']!;
  }
}
