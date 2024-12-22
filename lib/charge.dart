import 'package:flutter/material.dart';
import 'data.dart';
import 'Animation/Spinner.dart';
import 'Bottomnavigator.dart';
class Chargepage extends StatefulWidget {
  @override
  _ChargepageState createState() => _ChargepageState();
}

class _ChargepageState extends State<Chargepage> {
  final data datas = data();
  final TextEditingController stationController = TextEditingController();
  final TextEditingController chargerController = TextEditingController();
  final TextEditingController chargetController = TextEditingController();
  final TextEditingController electController = TextEditingController();
  double battery = 0;
  double electric = 0;
  @override
  void initState() {
    super.initState();
    // กำหนดค่าเริ่มต้นให้ TextField
    stationController.text = datas.station;
    chargerController.text = datas.charger;
    chargetController.text = datas.charget;
    electController.text = "${datas.elect} kWh";

  }
  double calculate(double progress){
    return progress *2;
  }
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Row(

                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BatteryProgressIndicator(
                        percentage: 100,
                        icons: Icons.battery_charging_full,
                        sector: "%",
                        content: "% แบตเตอรี่",
                        duration: Duration(minutes: 2),
                        onProgressUpdate: (current_percentage){
                          battery = calculate(current_percentage);
                        },
                      ),
                      SizedBox(width: 50),
                      BatteryProgressIndicator(
                        percentage: 100,
                        icons: Icons.car_rental,
                        sector: "kW",
                        content: "กำลังไฟฟ้า",
                        duration: Duration(minutes: 2),
                        onProgressUpdate: (current_percentage){
                           setState(() {
      electric = calculate(battery);
    });
                        
                        },
),
                    ],
                  ),
                  SizedBox(height: 40),
                  const Text(
                    "กรุณาเชื่อมต่อหัวชาร์จเข้ากับรถ",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const Text("ก่อนกดปุ่ม 'เริ่มชาร์จ'"),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const Text(
              "รายละเอียดการชาร์จ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            const SizedBox(height: 24),
            DetailRow(
              icon: Icons.calendar_month,
              label: "วันที่ชาร์จ",
              value: datas.date_now,
            ),
            TextField(
              controller: stationController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.ev_station_rounded),
                labelText: 'สถานีชาร์จ',
              ),
            ),
            TextField(
              controller: chargerController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.power),
                labelText: 'ประเภทหัวชาร์จ',
              ),
            ),
            TextField(
              controller: chargetController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.alarm),
                labelText: 'ระยะเวลาการชาร์จ',
              ),
            ), Row(
        children: [
          Icon(Icons.electric_bolt,size: 30,),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
               "จำนวนหน่วย",
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            '${electric.toStringAsFixed(2)}',
            style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ],
      ),

            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 
                  '/bill',  
                  arguments: {
                  'station': stationController.text,
                  'charger': chargerController.text,
                  'charget': chargetController.text,
                  'elect': electric.toStringAsFixed(2),
                  },
                );
              },
              child: const Text(
                "ตกลง",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(
                    horizontal: 150, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),SizedBox(height: 13,)
          ],
        ),
      ),bottomNavigationBar: Bottomnavigator(currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}

class DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const DetailRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            value,
            style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
