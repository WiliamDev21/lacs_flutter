import 'package:flutter/material.dart';

class DatosPersonalesView extends StatelessWidget {
  final TextEditingController apellidoPaternoController =
      TextEditingController();
  final TextEditingController apellidoMaternoController =
      TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController fechaNacimientoController =
      TextEditingController();
  final TextEditingController edadController = TextEditingController();
  final TextEditingController lugarNacimientoController =
      TextEditingController();
  final TextEditingController nacionalidadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: apellidoPaternoController,
                    decoration: const InputDecoration(
                      labelText: 'Apellido Paterno',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: apellidoMaternoController,
                    decoration: const InputDecoration(
                      labelText: 'Apellido Materno',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: nombreController,
                    decoration: const InputDecoration(
                      labelText: 'Nombre(s)',
                      prefixIcon: Icon(Icons.person),
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
                    controller: fechaNacimientoController,
                    decoration: const InputDecoration(
                      labelText: 'Fecha de Nacimiento',
                      prefixIcon: Icon(Icons.cake),
                    ),
                    onTap: () async {
                      DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (picked != null) {
                        fechaNacimientoController.text = picked
                            .toIso8601String()
                            .split('T')[0];
                        final now = DateTime.now();
                        int age = now.year - picked.year;
                        if (now.month < picked.month ||
                            (now.month == picked.month &&
                                now.day < picked.day)) {
                          age--;
                        }
                        edadController.text = age.toString();
                      }
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: edadController,
                    decoration: const InputDecoration(
                      labelText: 'Edad',
                      prefixIcon: Icon(Icons.numbers),
                    ),
                    readOnly: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: lugarNacimientoController,
                    decoration: const InputDecoration(
                      labelText: 'Lugar de Nacimiento',
                      prefixIcon: Icon(Icons.location_city),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: nacionalidadController,
                    decoration: const InputDecoration(
                      labelText: 'Nacionalidad',
                      prefixIcon: Icon(Icons.flag),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
