class IMSS {
  final String nss;
  final bool creditoInfonavit;
  final String numeroCreditoInfonavit;
  final String registroPatronal;
  final DateTime fechaAfiliacion;
  final String claseRT;
  final bool pensionado;
  final bool pensionAlimenticia;
  final bool viajero;
  final bool foraneo;
  final bool maternidad;
  final int numeroHijos;
  final List<Beneficiario> beneficiarios;
  final String umf;
  final bool incapacidad;
  final double sdi;

  IMSS({
    required this.nss,
    required this.creditoInfonavit,
    required this.numeroCreditoInfonavit,
    required this.registroPatronal,
    required this.fechaAfiliacion,
    required this.claseRT,
    required this.pensionado,
    required this.pensionAlimenticia,
    required this.viajero,
    required this.foraneo,
    required this.maternidad,
    required this.numeroHijos,
    required this.beneficiarios,
    required this.umf,
    required this.incapacidad,
    required this.sdi,
  });
}

class Beneficiario {
  final String nombre;
  final double porcentaje;
  final bool incapacidad;
  final bool tratamiento;

  Beneficiario({
    required this.nombre,
    required this.porcentaje,
    required this.incapacidad,
    required this.tratamiento,
  });
}
