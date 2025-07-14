import 'package:flutter/material.dart';

class DatosLaboralesForm extends StatelessWidget {
  const DatosLaboralesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Información del Puesto y Cliente',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _inputField('Puesto o Categoría'),
          _inputField('Actividades a Realizar'),
          _inputField('Nombre Empresa Cliente'),
          _inputField('RFC Empresa Cliente'),
          _inputField('Giro Empresa Cliente'),
          const SizedBox(height: 16),
          const Text(
            'Detalles del Contrato y Proyecto',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          _dropdownField('Tipo de Contrato', [
            'Determinado',
            'Obra Determinada',
            'Indeterminado',
            'Periodo de Prueba',
          ]),
          _inputField('Tiempo Duración (Si Determinado) / Nombre Proyecto'),
          _inputField('En qué Consiste el Proyecto (Obra Determinada)'),
          Row(
            children: [
              Expanded(
                child: _checkboxField('Se le va a reconocer antigüedad'),
              ),
              Expanded(child: _dateField('Fecha Antigüedad Cliente')),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Guardar Datos Laborales'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputField(String label) {
    return TextFormField(decoration: InputDecoration(labelText: label));
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

  Widget _checkboxField(String label) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (_) {}),
        Text(label),
      ],
    );
  }
}
