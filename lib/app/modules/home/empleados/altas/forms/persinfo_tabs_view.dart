import 'package:flutter/material.dart';
import 'datos_personales_form.dart';
import 'contacto_domicilio_form.dart';
import 'datos_laborales_form.dart';
import 'informacion_salarial_form.dart';
import 'seguridad_social_bancarios_form.dart';
import 'adicional_beneficiarios_form.dart';

class PersInfoTabsView extends StatefulWidget {
  const PersInfoTabsView({Key? key}) : super(key: key);

  @override
  State<PersInfoTabsView> createState() => _PersInfoTabsViewState();
}

class _PersInfoTabsViewState extends State<PersInfoTabsView>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  final List<Tab> _tabs = const [
    Tab(text: 'Datos Personales'),
    Tab(text: 'Contacto/Domicilio'),
    Tab(text: 'Datos Laborales'),
    Tab(text: 'Información Salarial'),
    Tab(text: 'Seguridad Social/Bancarios'),
    Tab(text: 'Adicional/Beneficiarios'),
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
        title: const Text('Información del Empleado'),
        bottom: TabBar(
          onTap: (value) {},
          controller: _tabController,
          tabs: _tabs,
          isScrollable: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: const [
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: DatosPersonalesForm(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: ContactoDomicilioForm(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: DatosLaboralesForm(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: InformacionSalarialForm(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: SeguridadSocialBancariosForm(),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: AdicionalBeneficiariosForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
