import 'package:flutter/material.dart';
import '../widgets/listview.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // สีพื้นหลังของ AppBar
          elevation: 0, // ลบเงาใต้ AppBar
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                color: Colors.purple), // ไอคอนลูกศรย้อนกลับ
            onPressed: () {
              Navigator.pop(context); // ย้อนกลับไปหน้าก่อนหน้า
            },
          ),
          title: Text(
            'เกี่ยวกับเรา',
            style: TextStyle(
              color: Colors.purple, // สีของข้อความ
              fontWeight: FontWeight.w500, // ความหนาของข้อความ
            ),
          ),
          centerTitle: false, // จัดตำแหน่งข้อความให้อยู่ตรงกลาง
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PEA VOLTA คืออะไร',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                    child: Text(
                      'PEA VOLTA Platform เป็น Digital Platform สำหรับบริหารจัดการการอัดประจุไฟฟ้าที่ PEA พัฒนาขึ้นเพื่ออำนวยความสะดวกให้กับผู้ใช้ยานยนต์ไฟฟ้า รวมถึงผู้ประกอบการ สถานีอัดประจุไฟฟ้าและบริการอื่นๆ ที่เกี่ยวข้อง ด้วยความมุ่งมั่นที่จะ ส่งเสริมการใช้ยานยนต์ ไฟฟ้าในประเทศไทย',
                      style: TextStyle(fontSize: 15, height: 1.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('ช่องทางติดต่อเรา'),
                SizedBox(
                  height: 10,
                ),
             /*   Listview(
                  label: 'PEA VOLTA',
                  url: 'https://www.facebook.com/peavolta',
                  icon: Icon(Icons.facebook,
                      color: Colors.blue), // ส่งไอคอนมาในพารามิเตอร์
                ),*/
              ],
            ),
          ),
        ));
  }
}
