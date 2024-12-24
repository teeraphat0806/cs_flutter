import 'package:flutter/material.dart';
import '../widgets/detail_row.dart';
import '../widgets/thank_you_card.dart';
import '../../../../core/ui/bottom_navigation.dart';
import '../../data/bill_repository.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  final BillRepository repository = BillRepository(); // Mock data หรือ API
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle Navigation
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      // Add more cases as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

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
              value: repository.getCurrentDate(),
            ),
            DetailRow(
              icon: Icons.ev_station_rounded,
              label: "สถานีชาร์จ",
              value: args['station'] ?? "N/A",
            ),
            DetailRow(
              icon: Icons.power,
              label: "ประเภทหัวชาร์จ",
              value: args['charger'] ?? "N/A",
            ),
            DetailRow(
              icon: Icons.alarm,
              label: "ระยะเวลาการชาร์จ",
              value: args['charget'] ?? "N/A",
            ),
            DetailRow(
              icon: Icons.electric_bolt,
              label: "จำนวนหน่วย",
              value: "${args['elect']} kWh",
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
                  "${repository.getPrice()} บาท",
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
                Navigator.pushNamed(context, '/');
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigator(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
