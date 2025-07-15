import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';
import 'package:lacs_flutter/styles/app_colors.dart';

// If AppColors is not defined, define it here or import the correct file.
// Example definition (remove if already defined elsewhere):
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
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (controller.selectedCompany.value != 'LACS')
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () =>
                                        controller.selectedCompany.value =
                                            'LACS',
                                    child: const Text('LACS'),
                                  ),
                                if (controller.selectedCompany.value !=
                                    'DORNISH')
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    onPressed: () =>
                                        controller.selectedCompany.value =
                                            'DORNISH',
                                    child: const Text('DORNISH'),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          if (controller.isSidebarExpanded.value)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
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
                          const SizedBox(height: 16),
                          _SidebarItem(
                            icon: Icons.home,
                            label: 'Inicio',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                          _SidebarItem(
                            icon: Icons.notifications,
                            label: 'Notificaciones',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                          const SizedBox(height: 24),
                          if (controller.isSidebarExpanded.value)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
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
                          const SizedBox(height: 16),
                          _SidebarItem(
                            icon: Icons.warning_amber_rounded,
                            label: 'Incidencias',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                          _EmpleadosDropdownSidebarItem(
                            expanded: controller.isSidebarExpanded.value,
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
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
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 0,
              child: Center(child: Icon(icon, color: Colors.white, size: 28)),
            ),
            if (expanded) ...[
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ],
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
  bool _showDropdown = false;

  void _toggleDropdown(bool show) {
    setState(() {
      _showDropdown = show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _toggleDropdown(!_showDropdown),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 0,
                    child: Center(
                      child: Icon(Icons.groups, color: Colors.white, size: 28),
                    ),
                  ),
                  if (widget.expanded) ...[
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        'Empleados',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Icon(
                      _showDropdown
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        if (_showDropdown && widget.expanded)
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 8,
              top: 2,
              bottom: 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF23232B),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DropdownOption(
                    icon: Icons.list_alt,
                    label: 'Lista de empleados',
                    onTap: () {
                      Get.toNamed('/listEmp');
                      _toggleDropdown(false);
                    },
                  ),
                  _DropdownOption(
                    icon: Icons.person_add,
                    label: 'Altas',
                    onTap: () {
                      Get.toNamed('/altas');
                      _toggleDropdown(false);
                    },
                  ),
                  _DropdownOption(
                    icon: Icons.person_remove,
                    label: 'Bajas',
                    onTap: () {
                      Get.toNamed('/bajas');
                      _toggleDropdown(false);
                    },
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _DropdownOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const _DropdownOption({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
