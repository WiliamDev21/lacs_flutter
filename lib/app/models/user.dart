class User {
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String? nickname;
  final String empresa;
  final String? email;
  final String? telefono;
  final String rol;

  User({
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    this.nickname,
    required this.empresa,
    this.email,
    this.telefono,
    required this.rol,
  });
}
