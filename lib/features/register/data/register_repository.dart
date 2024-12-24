class RegisterRepository {
  Future<void> registerUser(Map<String, String> userData) async {
    // จำลองการส่งข้อมูลไปยัง Backend
    await Future.delayed(const Duration(seconds: 2));
    print("User Registered: $userData");
  }
}
