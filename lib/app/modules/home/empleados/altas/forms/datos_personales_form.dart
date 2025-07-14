import 'package:flutter/material.dart';

class DatosPersonalesForm extends StatelessWidget {
  const DatosPersonalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Información General del Empleado',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              Expanded(child: _inputField('Apellido Paterno')),
              Expanded(child: _inputField('Apellido Materno')),
              Expanded(child: _inputField('Nombre(s)')),
            ],
          ),
          Row(
            children: [
              Expanded(child: _dateField('Fecha de Nacimiento')),
              Expanded(child: _inputField('Edad', readOnly: true)),
            ],
          ),
          Row(
            children: [
              Expanded(child: _inputField('Lugar de Nacimiento')),
              Expanded(child: _inputField('Nacionalidad')),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _dropdownField('Sexo', [
                  'Masculino',
                  'Femenino',
                  'Otro',
                ]),
              ),
              Expanded(
                child: _dropdownField('Estado Civil', [
                  'Soltero(a)',
                  'Casado(a)',
                  'Divorciado(a)',
                  'Viudo(a)',
                  'Unión Libre',
                ]),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Guardar Datos Personales'),
              ),
              const SizedBox(width: 12),
              OutlinedButton(onPressed: () {}, child: const Text('Cancelar')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputField(String label, {bool readOnly = false}) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      readOnly: readOnly,
    );
  }

  Widget _dateField(String label) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.datetime,
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
