import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
// import eliminado: 'package:lacs_flutter/styles/app_colors.dart';

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool expanded;
  const _SidebarItem({
    required this.icon,
    required this.label,
    required this.expanded,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 28),
          if (expanded) ...[
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
          ],
        ],
      ),
    );
  }
}

// Definición local de AppColors si no está importada correctamente
class AppColors {
  static const double borderRadius = 8.0;
  static const Color sidebarBgDark = Color(0xFF23232B);
}

class Sidebar extends StatelessWidget {
  final HomeController controller;
  const Sidebar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MouseRegion(
        onEnter: (_) => controller.setSidebarExpanded(true),
        onExit: (_) => controller.setSidebarExpanded(false),
        child: GestureDetector(
          onTap: () => controller.toggleSidebar(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppColors.borderRadius * 2.5),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: controller.isSidebarExpanded.value ? 280 : 70,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.sidebarBgDark,
                borderRadius: BorderRadius.circular(
                  AppColors.borderRadius * 2.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(2, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Top section: logo, company switch, menu
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      Center(
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcATop,
                          ),
                          child: Image.asset(
                            controller.selectedCompany.value == 'LACS'
                                ? (controller.isSidebarExpanded.value
                                      ? 'assets/LACS.png'
                                      : 'assets/LACS-Logo.png')
                                : (controller.isSidebarExpanded.value
                                      ? 'assets/DORNISH.png'
                                      : 'assets/DORNISH-Logo.png'),
                            height: controller.isSidebarExpanded.value
                                ? 60
                                : 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (controller.isSidebarExpanded.value)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    if (controller.selectedCompany.value !=
                                        'LACS')
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          onPressed: () =>
                                              controller.selectedCompany.value =
                                                  'LACS',
                                          child: const Text('LACS'),
                                        ),
                                      ),
                                    if (controller.selectedCompany.value !=
                                        'DORNISH')
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          onPressed: () =>
                                              controller.selectedCompany.value =
                                                  'DORNISH',
                                          child: const Text('DORNISH'),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: 32),
                      if (controller.isSidebarExpanded.value)
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              'MENÚ PRINCIPAL',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _SidebarItem(
                            icon: Icons.home,
                            label: 'Inicio',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _SidebarItem(
                            icon: Icons.notifications,
                            label: 'Notificaciones',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (controller.isSidebarExpanded.value)
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Center(
                            child: Text(
                              'GENERAL',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _SidebarItem(
                            icon: Icons.warning_amber_rounded,
                            label: 'Incidencias',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _EmpleadosDropdownSidebarItem(
                            expanded: controller.isSidebarExpanded.value,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                  // Bottom section: user avatar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 24,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.account_circle,
                            color: Color(0xFF23232B),
                            size: 32,
                          ),
                        ),
                        if (controller.isSidebarExpanded.value) ...[
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Roger_Rh',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'admin',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmpleadosDropdownSidebarItem extends StatefulWidget {
  final bool expanded;
  const _EmpleadosDropdownSidebarItem({Key? key, required this.expanded})
    : super(key: key);

  @override
  State<_EmpleadosDropdownSidebarItem> createState() =>
      _EmpleadosDropdownSidebarItemState();
}

class _EmpleadosDropdownSidebarItemState
    extends State<_EmpleadosDropdownSidebarItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    if (!widget.expanded) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.groups, color: Colors.white, size: 28)),
          ],
        ),
      );
    }
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        cardColor: const Color(0xFF23232B),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 240),
          child: ExpansionTile(
            initiallyExpanded: _expanded,
            onExpansionChanged: (val) => setState(() => _expanded = val),
            leading: const Icon(Icons.groups, color: Colors.white, size: 28),
            title: const Text(
              'Empleados',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            childrenPadding: const EdgeInsets.only(
              left: 40,
              right: 8,
              bottom: 8,
            ),
            children: [
              ListTile(
                leading: const Icon(Icons.list_alt, color: Colors.white),
                title: const Text(
                  'Lista de empleados',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Get.toNamed('/listEmp'),
              ),
              ListTile(
                leading: const Icon(Icons.person_add, color: Colors.white),
                title: const Text(
                  'Altas',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Get.toNamed('/altas'),
              ),
              ListTile(
                leading: const Icon(Icons.person_remove, color: Colors.white),
                title: const Text(
                  'Bajas',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Get.toNamed('/bajas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
