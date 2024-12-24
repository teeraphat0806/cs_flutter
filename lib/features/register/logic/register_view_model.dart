class RegisterViewModel {
  bool validateEmail(String email) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(email);
  }

  bool validatePasswords(String password1, String password2) {
    return password1.isNotEmpty && password1 == password2;
  }
}
