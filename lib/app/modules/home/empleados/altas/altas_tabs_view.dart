import 'package:flutter/material.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/adicional_beneficiarios/adicional_beneficiarios_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/contacto_domicilio/contacto_domicilio_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/datos_laborales/datos_laborales_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/datos_personales/datos_personales_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/informacion_salarial/informacion_salarial_view.dart';
import 'package:lacs_flutter/app/modules/home/empleados/altas/seguridad_social_bancarios/seguridad_social_bancarios_view.dart';

class AltasTabsView extends StatefulWidget {
  const AltasTabsView({Key? key}) : super(key: key);

  @override
  State<AltasTabsView> createState() => _AltasTabsViewState();
}

class _AltasTabsViewState extends State<AltasTabsView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> _tabs = const [
    Tab(text: 'Datos Personales'),
    Tab(text: 'Contacto y Domicilio'),
    Tab(text: 'Datos Laborales'),
    Tab(text: 'Información Salarial'),
    Tab(text: 'Adicional y Beneficiarios'),
    Tab(text: 'Seguridad Social y Bancarios'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          DatosPersonalesView(),
          ContactoDomicilioView(),
          DatosLaboralesView(),
          InformacionSalarialView(),
          AdicionalBeneficiariosView(),
          SeguridadSocialBancariosView(),
        ],
      ),
    );
  }
}
