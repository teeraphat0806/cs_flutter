import 'package:flutter/material.dart';

class NotResign extends StatefulWidget {
  const NotResign({super.key});

  @override
  State<NotResign> createState() => _NotResignState();
}

class _NotResignState extends State<NotResign> {
  @override
  Widget build(BuildContext context) {
    return Center(
     
      child:
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ข้อมูลผู้ใช้',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'คุณยังไม่ได้กรอกข้อมูลผู้ใช้',
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/emailverify');
                  },
                  child: const Text(
                    "กรุณากรอกข้อมูลผู้ใช้",
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 184, 163, 3),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 95, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
