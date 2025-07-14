import 'package:flutter/material.dart';

class ContactoDomicilioForm extends StatelessWidget {
  const ContactoDomicilioForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Información de Contacto',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _inputField('Número de Teléfono', keyboardType: TextInputType.phone),
          const SizedBox(height: 16),
          const Text(
            'Detalles del Domicilio Personal',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _inputField('Calle'),
          Row(
            children: [
              Expanded(child: _inputField('Número Exterior')),
              Expanded(child: _inputField('Número Interior (Opcional)')),
            ],
          ),
          _inputField('Colonia'),
          Row(
            children: [
              Expanded(child: _inputField('Ciudad')),
              Expanded(child: _inputField('Estado')),
            ],
          ),
          _inputField('Código Postal'),
          const SizedBox(height: 16),
          const Text(
            'Domicilio Laboral',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _inputField('Calle Laboral'),
          Row(
            children: [
              Expanded(child: _inputField('Número Exterior Laboral')),
              Expanded(child: _inputField('Número Interior Laboral')),
            ],
          ),
          _inputField('Colonia Laboral'),
          Row(
            children: [
              Expanded(child: _inputField('Ciudad Laboral')),
              Expanded(child: _inputField('Estado Laboral')),
            ],
          ),
          _inputField('Código Postal Laboral'),
          const SizedBox(height: 24),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Guardar Contacto y Domicilio'),
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
}
