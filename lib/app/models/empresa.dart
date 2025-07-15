import 'domicilio.dart';

class Empresa {
  final String nombre;
  final String rfc;
  final Domicilio domicilio;
  final String giro;

  Empresa({
    required this.nombre,
    required this.rfc,
    required this.domicilio,
    required this.giro,
  });
}
