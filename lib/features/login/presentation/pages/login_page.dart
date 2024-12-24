import 'package:flutter/material.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset('assets/images/pealogoTH.png', width: 100),
              SizedBox(height: 10),
              Text(
                "เข้าสู่ระบบการชาร์จ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              LoginForm(), // เรียก LoginForm จากไฟล์แยก
            ],
          ),
        ),
      ),
    );
  }
}
