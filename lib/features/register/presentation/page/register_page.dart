import 'package:flutter/material.dart';
import '../widgets/email_text_field.dart';
import '../widgets/password_text_field.dart';
import '../widgets/terms_checkbox.dart';
import '../widgets/register_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  "ลงทะเบียนผู้ใช้บริการ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "กรุณากรอกข้อมูลเพื่อสร้างบัญชีผู้ใช้บริการ",
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 20),
                const EmailTextField(),
                const SizedBox(height: 10),
                const PasswordTextField(),
                const SizedBox(height: 10),
                const PasswordTextField(isConfirmation: true),
                const SizedBox(height: 10),
                const TermsCheckbox(),
                const SizedBox(height: 20),
                RegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
