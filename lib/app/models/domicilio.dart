class Domicilio {
  final String calle;
  final String numeroExterior;
  final String numeroInterior;
  final String colonia;
  final String codigoPostal;
  final String ciudad;
  final String estado;

  Domicilio({
    required this.calle,
    required this.numeroExterior,
    required this.numeroInterior,
    required this.colonia,
    required this.codigoPostal,
    required this.ciudad,
    required this.estado,
  });

  @override
  String toString() {
    return "$calle $numeroExterior/$numeroInterior, $colonia, $ciudad, $estado, $codigoPostal";
  }
}
