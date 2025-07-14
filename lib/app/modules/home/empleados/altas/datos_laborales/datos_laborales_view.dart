import 'package:flutter/material.dart';

class DatosLaboralesView extends StatelessWidget {
  final TextEditingController puestoController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController fechaIngresoController = TextEditingController();
  final TextEditingController tipoContratoController = TextEditingController();
  final TextEditingController supervisorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: puestoController,
                  decoration: const InputDecoration(
                    labelText: 'Puesto',
                    prefixIcon: Icon(Icons.work),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: areaController,
                  decoration: const InputDecoration(
                    labelText: 'Área',
                    prefixIcon: Icon(Icons.apartment),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: fechaIngresoController,
                  decoration: const InputDecoration(
                    labelText: 'Fecha de Ingreso',
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1990),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      fechaIngresoController.text = picked
                          .toIso8601String()
                          .split('T')[0];
                    }
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: tipoContratoController,
                  decoration: const InputDecoration(
                    labelText: 'Tipo de Contrato',
                    prefixIcon: Icon(Icons.assignment),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: supervisorController,
            decoration: const InputDecoration(
              labelText: 'Supervisor',
              prefixIcon: Icon(Icons.person_outline),
            ),
          ),
        ],
      ),
    );
  }
}
