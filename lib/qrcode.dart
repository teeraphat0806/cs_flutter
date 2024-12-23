import 'package:flutter/material.dart';
import 'Bottomnavigator.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({super.key});

  @override
  _Qrcodestate createState() => _Qrcodestate();
}

class _Qrcodestate extends State<Qrcode> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/');
        break;
      case 2:
        Navigator.pushNamed(context, '/');
        break;
      case 3:
        Navigator.pushNamed(context, '/');
        break;
    }
  }

  Image QrcodeImage(int price) {
    const qrMap = {
      100: 'assets/images/qr100.jpeg',
      200: 'assets/images/qr200.jpeg',
      300: 'assets/images/qr300.jpeg',
      1000: 'assets/images/qr1000.jpeg',
      2000: 'assets/images/qr2000.jpeg',
      3000: 'assets/images/qr3000.jpeg',
    };

    return qrMap.containsKey(price)
        ? Image.asset(qrMap[price]!, width: 200)
        : throw Exception('Invalid price: $price');
  }

  @override
  Widget build(BuildContext context) {
    // รับ arguments จากหน้าก่อนหน้า
    final price = ModalRoute.of(context)?.settings.arguments as int;
    // วันที่และเวลา ณ ปัจจุบัน
    final datenow =
        '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')} '
        '${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/payment');
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'เติมเงินด้วย THAI QR',
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
            Container(
              color: Colors.white70,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "กรุณาชำระเงินผ่าน Internet banking ของท่าน ภายใน 10 นาที",
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      QrcodeImage(price),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('วันที่สร้างคิวอาร์\n$datenow'),
                      Text('จำนวนเงิน\n$price', textAlign: TextAlign.right),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 200, 8, 0),
              child: ElevatedButton(
                onPressed: () {
                  // ตัวอย่างการบันทึกไฟล์ หรือแสดงข้อความ
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.save_alt, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'บันทึก',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          Bottomnavigator(currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
