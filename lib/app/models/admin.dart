class Admin {
  final String nickname;
  final String passwordHashed;

  Admin({required this.nickname, required this.passwordHashed});

  bool verify(String nickname, String password) {
    if (this.nickname != nickname) {
      return false;
    }
    try {
      final parts = passwordHashed.split(":");
      final salt = parts[0];
      final storedHash = parts[1];
      // Add hash verification logic here
      return true; // Placeholder
    } catch (e) {
      return false;
    }
  }
}
