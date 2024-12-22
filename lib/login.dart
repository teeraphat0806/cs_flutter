import 'package:flutter/material.dart';
import 'data.dart';
class Loginpage extends StatefulWidget{
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
     body: SingleChildScrollView(
      child:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/images/pealogoTH.png',width: 100,),
            SizedBox(height: 10),
            Text("เข้าสู่ระบบการชาร์จ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            Container(
              padding:EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 245, 229, 249),
                      labelText: 'อีเมล',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                    ),
                    ), 
                    SizedBox(height: 8,),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 245, 229, 249),
                      labelText: 'รหัสผ่าน',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      
                     ),
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/charge');}, 
                  child: const Text("เข้าสู่ระบบ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                 style: ElevatedButton.styleFrom( backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),), ),
                SizedBox(height: 5,),
                TextButton(onPressed: (){Navigator.pushNamed(context, '/register',);}, child: Text("ลืมรหัสผ่าน",style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                Text('หรือ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){}, 
                  child: const Text("ลงทะเบียน",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                 style: ElevatedButton.styleFrom( backgroundColor: const Color.fromARGB(255, 184, 163, 3),
                padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),), ),

                ],
              ),
            ),
                     ],
        ),
      )
     )  
    );
  }
}