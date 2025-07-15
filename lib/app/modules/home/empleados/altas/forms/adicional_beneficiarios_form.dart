import 'package:flutter/material.dart';

class AdicionalBeneficiariosForm extends StatelessWidget {
  const AdicionalBeneficiariosForm({Key? key}) : super(key: key);

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
                'Información Adicional Personal',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: [
                  Expanded(child: _checkboxField('Pensionado')),
                  Expanded(child: _checkboxField('Pensión Alimenticia')),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _checkboxField('Viajero')),
                  Expanded(child: _checkboxField('Foráneo')),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _checkboxField('Maternidad')),
                  Expanded(
                    child: _inputField(
                      'Hijo(s)',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Beneficiarios',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _beneficiariosList(),
              const SizedBox(height: 16),
              const Text(
                'Información Médica',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _inputField('UMF'),
              _checkboxField('Incapacidad'),
              _checkboxField('Incapacidad del Beneficiario'),
              _inputField('Tratamiento Médico Beneficiarios'),
              const SizedBox(height: 24),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Guardar Información Adicional'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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

  Widget _inputField(
    String label, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
      keyboardType: keyboardType,
    );
  }

  Widget _beneficiariosList() {
    // Para simplificar, solo un beneficiario. Se puede expandir a lista dinámica.
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _inputField('Nombre Completo del Beneficiario(s)')),
            Expanded(
              child: _inputField(
                'Porcentaje del Beneficiario',
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        // Botón para agregar/eliminar beneficiarios (no funcional en este stub)
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Agregar Beneficiario'),
          ),
        ),
      ],
    );
  }
}
