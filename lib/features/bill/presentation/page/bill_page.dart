import 'package:flutter/material.dart';
import '../widgets/detail_row.dart';
import '../widgets/thank_you_card.dart';

import '../../data/bill_repository.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  final BillRepository repository = BillRepository(); // ใช้ข้อมูลจำลองจาก BillRepository

  late Map<String, dynamic> billData; // เก็บข้อมูล Mockup Bill

  @override
  void initState() {
    super.initState();
    billData = repository.getMockBill(); // ดึงข้อมูล Mockup Bill
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ThankYouCard(), // ข้อความขอบคุณ
            const SizedBox(height: 40),
            const Text(
              "สรุปรายละเอียดการชาร์จ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            const SizedBox(height: 24),
            DetailRow(
              icon: Icons.calendar_month,
              label: "วันที่ชาร์จ",
              value: repository.getCurrentDate(), // ดึงวันที่จาก Repository
            ),
            DetailRow(
              icon: Icons.ev_station_rounded,
              label: "สถานีชาร์จ",
              value: billData['station'], // ดึงข้อมูลสถานี
            ),
            DetailRow(
              icon: Icons.power,
              label: "ประเภทหัวชาร์จ",
              value: billData['charger'], // ดึงข้อมูลประเภทหัวชาร์จ
            ),
            DetailRow(
              icon: Icons.alarm,
              label: "ระยะเวลาการชาร์จ",
              value: billData['charget'], // ดึงข้อมูลระยะเวลาชาร์จ
            ),
            DetailRow(
              icon: Icons.electric_bolt,
              label: "จำนวนหน่วย",
              value: "${billData['electric']} kWh", // ดึงจำนวนหน่วยไฟฟ้า
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "ค่าบริการรวมทั้งสิ้น",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 143, 34, 194),
                  ),
                ),
                Text(
                  "${repository.getPrice()} บาท", // ดึงข้อมูลราคาจาก Repository
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 143, 34, 194),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/'); // กลับไปหน้าแรก
              },
              child: const Text("ตกลง", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),   
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
