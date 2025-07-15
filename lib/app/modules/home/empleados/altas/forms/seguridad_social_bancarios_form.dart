import 'package:flutter/material.dart';

class SeguridadSocialBancariosForm extends StatelessWidget {
  const SeguridadSocialBancariosForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 16,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Documentos de Identificación',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _inputField('CURP'),
              _inputField('RFC'),
              const SizedBox(height: 16),
              const Text(
                'Información IMSS / Infonavit',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _inputField('No. de Seguro Social (NSS)'),
              _dateField('Fecha Alta IMSS'),
              _checkboxField('Crédito Infonavit'),
              _inputField('Número Infonavit'),
              _inputField('Registro Patronal'),
              _inputField('Clase RT'),
              const SizedBox(height: 16),
              const Text(
                'Datos Bancarios',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _inputField('Banco'),
              _inputField('Cuenta Bancaria'),
              _inputField(
                'CLABE Interbancaria',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Guardar Seguridad Social y Bancarios'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField(
    String label, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: keyboardType,
    );
  }

  Widget _dateField(String label) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.datetime,
    );
  }

  Widget _checkboxField(String label) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (_) {}),
        Text(label),
      ],
    );
  }
}
