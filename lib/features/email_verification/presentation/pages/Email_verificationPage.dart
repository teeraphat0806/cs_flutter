import 'package:flutter/material.dart';
import '../widgets/Email_button.dart';
class Email_verificationPage extends StatefulWidget {
  const Email_verificationPage({super.key});

  @override
  State<Email_verificationPage> createState() => _Email_verificationState();
}

class _Email_verificationState extends State<Email_verificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FittedBox(
          child:
            Column(
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
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
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text('ขอบคุณสำหรับการลงทะเบียน',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Icon(Icons.mail,size: 40,),
                SizedBox(height: 20,),
                Text('กรุณายืนยันการเปิดใช้งาน',style: TextStyle(color:  Color.fromARGB(255, 184, 163, 3),fontWeight: FontWeight.w600,fontSize: 20),),
                Text('ผ่านบัญชีอีเมลที่ได้ลงทะเบียนไว้',style: TextStyle(fontSize: 20),),
                SizedBox(height: 40,),
                Text('หรือ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                SizedBox(height: 10,),
                EmailButton(),
              ],
            ),
          
        ),
      ),
    );
  }
}