import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_controller.dart';

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
            borderRadius: BorderRadius.circular(24),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: controller.isSidebarExpanded.value ? 280 : 70,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF23232B),
                borderRadius: BorderRadius.circular(24),
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
                          if (!controller.isSidebarExpanded.value)
                            Center(
                            child: Image.asset(
                              'assets/lacs_logo.jpeg',
                              height: 50,
                            ),
                          ),
                          if (controller.isSidebarExpanded.value) ...[
                            Center(
                            child: Image.asset(
                              'assets/lacs_logo_full.jpeg',
                              height: 60,
                            ),
                          ),
                          
                            const SizedBox(width: 12),
                          ],
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
                          _SidebarItem(
                            icon: Icons.groups,
                            label: 'Empleados',
                            expanded: controller.isSidebarExpanded.value,
                          ),
                          const SizedBox(height: 24),
                          if (controller.isSidebarExpanded.value)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'LACS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          const SizedBox(height: 8),
                          if (controller.isSidebarExpanded.value)
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'DORNISH',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
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
                          const SizedBox(width: 12),
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
            Flexible(flex: 0, child: Icon(icon, color: Colors.white, size: 28)),
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
