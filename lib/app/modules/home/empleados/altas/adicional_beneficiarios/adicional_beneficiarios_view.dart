import 'package:flutter/material.dart';

class AdicionalBeneficiariosView extends StatelessWidget {
  final TextEditingController beneficiarioController = TextEditingController();
  final TextEditingController parentescoController = TextEditingController();
  final TextEditingController porcentajeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: beneficiarioController,
            decoration: const InputDecoration(
              labelText: 'Nombre del Beneficiario',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: parentescoController,
            decoration: const InputDecoration(
              labelText: 'Parentesco',
              prefixIcon: Icon(Icons.group),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: porcentajeController,
            decoration: const InputDecoration(
              labelText: 'Porcentaje',
              prefixIcon: Icon(Icons.percent),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
