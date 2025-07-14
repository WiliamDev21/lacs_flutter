import 'package:flutter/material.dart';

class InformacionSalarialForm extends StatelessWidget {
  const InformacionSalarialForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Detalles del Salario',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _inputField(
            'Sueldo Mensual Bruto',
            keyboardType: TextInputType.number,
          ),
          _inputField(
            'Sueldo Mensual Neto',
            keyboardType: TextInputType.number,
          ),
          _inputField('Tipo de Salario'),
          Row(
            children: [
              Expanded(
                child: _inputField('SD', keyboardType: TextInputType.number),
              ),
              Expanded(
                child: _inputField(
                  'Factor Integración',
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          _inputField('SDI', keyboardType: TextInputType.number),
          _inputField('Empresa Pagadora'),
          _dropdownField('Forma de Pago', ['Quincenal', 'Semanal']),
          const SizedBox(height: 24),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Guardar Información Salarial'),
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

  Widget _dropdownField(String label, List<String> options) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: options
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (_) {},
    );
  }
}
