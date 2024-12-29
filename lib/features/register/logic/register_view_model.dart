import 'package:flutter/material.dart';
class RegisterViewModel {
  // ตรวจสอบความยาวรหัสผ่าน
  bool isPasswordLongerThan8(String password) {
    return password.length >= 8;
  }

  // ตรวจสอบว่ารหัสผ่านเป็นอีเมลหรือไม่
  bool containsEmail(String password, String email) {
    return password.contains(email);
  }

  // ตรวจสอบว่ารหัสผ่านประกอบด้วยตัวเลขและตัวอักษร
  bool containsNumberAndAlphabet(String password) {
    final numberRegex = RegExp(r'[0-9]');
    final alphabetRegex = RegExp(r'[a-zA-Z]');
    return numberRegex.hasMatch(password) && alphabetRegex.hasMatch(password);
  }

  // ตรวจสอบความแข็งแรงของรหัสผ่าน
  Map<String, dynamic> checkPasswordStrength(String password) {
    final hasNumber = RegExp(r'[0-9]');
    final hasLetter = RegExp(r'[a-zA-Z]');
    final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (password.length < 8) {
      return {'level': 'อ่อนแอ', 'color': Colors.red, 'pass':false};
    }

    if (password.length >= 8 &&
        hasLetter.hasMatch(password) &&
        !hasNumber.hasMatch(password)) {
      return {'level': 'ปานกลาง', 'color': Colors.amberAccent, 'pass':false};
    }

    if (hasLetter.hasMatch(password) && hasNumber.hasMatch(password)) {
      if (hasSpecialChar.hasMatch(password)) {
        return {'level': 'ดีมาก', 'color': Colors.lightGreenAccent, 'pass':true};
      }
      return {'level': 'ดี', 'color': Colors.greenAccent,'pass':true};
    }

    return {'level': 'อ่อนแอ', 'color': Colors.red};
  }

  // ฟังก์ชันรวมการตรวจสอบทั้งหมด
  List<Map<String, dynamic>> validatePassword(
      String password, String email) {
    return [
      {
        'message': 'รหัสผ่านต้องมีความยาวมากกว่า 8 ตัว',
        'status': isPasswordLongerThan8(password),
      },
      {
        'message': 'ไม่สามารถใช้ชื่อหรืออีเมลในรหัสผ่านได้',
        'status': !containsEmail(password, email),
      },
      {
        'message': 'รหัสผ่านต้องประกอบด้วยตัวเลขและตัวอักษร',
        'status': containsNumberAndAlphabet(password),
      },
    ];
  }
}
