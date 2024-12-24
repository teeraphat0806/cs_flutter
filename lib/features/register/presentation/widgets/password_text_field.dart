import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final bool isConfirmation;

  const PasswordTextField({Key? key, this.isConfirmation = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 245, 229, 249),
        labelText: isConfirmation ? 'ยืนยันรหัสผ่าน' : 'รหัสผ่าน',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
      obscureText: true,
    );
  }
}
