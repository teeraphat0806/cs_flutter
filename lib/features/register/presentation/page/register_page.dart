import 'package:flutter/material.dart';
import '../widgets/Checkpassword.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 245, 229, 249),
                    labelText: 'อีเมล',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  onChanged: (value) {
                    setState(() {}); // Refresh to validate dynamically
                  },
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 245, 229, 249),
                    labelText: 'รหัสผ่าน',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {}); // Refresh to validate dynamically
                  },
                ),
                const SizedBox(height: 30),
                CheckPassword(
                  password: _passwordController.text,
                  email: _emailController.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
