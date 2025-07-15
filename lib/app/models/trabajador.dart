import 'domicilio.dart';
import 'empresa.dart';
import 'banca.dart';
import 'imss.dart';

class Trabajador {
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String telefono;
  final String rfc;
  final String curp;
  final Domicilio domicilioPersonal;
  final String puesto;
  final double salarioNeto;
  final double salarioBruto;
  final String actividades;
  final String nacionalidad;
  final DateTime fechaNacimiento;
  final String lugarNacimiento;
  final int edad;
  final String estadoCivil;
  final Empresa empresa;
  final int tiempoDuracionContrato;
  final String sexo;
  final String tipoContrato;
  final DateTime fechaContratacion;
  final Banca banca;
  final IMSS imss;
  final double sd;
  final double factorIntegracion;
  final String empresaPagadora;
  final String formatoPago;

  Trabajador({
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.telefono,
    required this.rfc,
    required this.curp,
    required this.domicilioPersonal,
    required this.puesto,
    required this.salarioNeto,
    required this.salarioBruto,
    required this.actividades,
    required this.nacionalidad,
    required this.fechaNacimiento,
    required this.lugarNacimiento,
    required this.edad,
    required this.estadoCivil,
    required this.empresa,
    required this.tiempoDuracionContrato,
    required this.sexo,
    required this.tipoContrato,
    required this.fechaContratacion,
    required this.banca,
    required this.imss,
    required this.sd,
    required this.factorIntegracion,
    required this.empresaPagadora,
    required this.formatoPago,
  });
}
