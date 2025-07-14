import 'package:flutter/material.dart';

class SeguridadSocialBancariosView extends StatelessWidget {
  final TextEditingController nssController = TextEditingController();
  final TextEditingController curpController = TextEditingController();
  final TextEditingController rfcController = TextEditingController();
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
                  controller: nssController,
                  decoration: const InputDecoration(
                    labelText: 'NSS',
                    prefixIcon: Icon(Icons.security),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: curpController,
                  decoration: const InputDecoration(
                    labelText: 'CURP',
                    prefixIcon: Icon(Icons.badge),
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
                  controller: rfcController,
                  decoration: const InputDecoration(
                    labelText: 'RFC',
                    prefixIcon: Icon(Icons.credit_card),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: bancoController,
                  decoration: const InputDecoration(
                    labelText: 'Banco',
                    prefixIcon: Icon(Icons.account_balance),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: cuentaController,
            decoration: const InputDecoration(
              labelText: 'Cuenta Bancaria',
              prefixIcon: Icon(Icons.account_balance_wallet),
            ),
          ),
        ],
      ),
    );
  }
}
