import 'package:flutter/material.dart';

class SeguridadSocialBancariosForm extends StatelessWidget {
  const SeguridadSocialBancariosForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
