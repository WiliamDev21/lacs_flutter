import 'package:flutter/material.dart';

class InformacionSalarialView extends StatelessWidget {
  final TextEditingController salarioController = TextEditingController();
  final TextEditingController tipoPagoController = TextEditingController();
  final TextEditingController bancoController = TextEditingController();
  final TextEditingController cuentaController = TextEditingController();

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
                  controller: salarioController,
                  decoration: const InputDecoration(
                    labelText: 'Salario',
                    prefixIcon: Icon(Icons.attach_money),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: tipoPagoController,
                  decoration: const InputDecoration(
                    labelText: 'Tipo de Pago',
                    prefixIcon: Icon(Icons.payment),
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
                  controller: bancoController,
                  decoration: const InputDecoration(
                    labelText: 'Banco',
                    prefixIcon: Icon(Icons.account_balance),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: cuentaController,
                  decoration: const InputDecoration(
                    labelText: 'Cuenta Bancaria',
                    prefixIcon: Icon(Icons.credit_card),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
