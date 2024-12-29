import 'package:flutter/material.dart';

class ForgetpassewordPage extends StatefulWidget {
  const ForgetpassewordPage({super.key});

  @override
  State<ForgetpassewordPage> createState() => _ForgetpasseworState();
}

class _ForgetpasseworState extends State<ForgetpassewordPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: FittedBox(
          child:
            Column(
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  Text('ย้อนกลับ',style: TextStyle(color: Colors.white,fontSize: 13),)
              ],
            ),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'ลืมรหัสผ่าน?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('ระบุอีเมลเพื่อยืนยันการขอรีเซตรหัสผ่าน',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                  Container(
                    padding: EdgeInsets.fromLTRB(28, 15, 28, 8),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 245, 229, 249),
                        labelText: 'อีเมล',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/',
                          arguments: {'index': 0, 'usePages': true});
                    },
                    child: const Text(
                      "ส่งอีเมล",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 118, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 420,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
