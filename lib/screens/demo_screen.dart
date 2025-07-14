import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacs_flutter/app/modules/home/widgets/animated_icon_widget.dart';
import 'package:lacs_flutter/app/modules/home/widgets/custom_tab_bar.dart';
import 'package:lacs_flutter/app/modules/home/widgets/custom_loading_overlay.dart';
import 'package:lacs_flutter/app/modules/home/widgets/tab_content_loader.dart';
import '../widgets/custom_message_modal.dart';
import '../widgets/custom_loading_overlay.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/tab_content_loader.dart';
import '../widgets/animated_icon_widget.dart';
import '../services/tab_service.dart';

class DemoScreen extends StatelessWidget {
  final TabService tabService = Get.put(TabService());

  final List<String> tabs = ['Datos', 'Beneficiarios', 'Configuración'];
  final List<Widget> tabContents = [
    Center(child: Text('Contenido de Datos')),
    Center(child: Text('Contenido de Beneficiarios')),
    Center(child: Text('Contenido de Configuración')),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Demo Migración Frontend'),
            actions: [
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  CustomMessageModal.show(
                    context,
                    '¡Este es un mensaje modal!',
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              CustomTabBar(tabs: tabs),
              Expanded(child: TabContentLoader(tabContents: tabContents)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AnimatedIconWidget(
                  icon: Icons.star,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        // Overlay de carga global
        CustomLoadingOverlay(),
      ],
    );
  }
}
