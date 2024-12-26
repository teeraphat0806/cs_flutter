import 'package:cs_flutter/features/charge/logic/charge_view_model.dart';
import 'package:flutter/material.dart';
import '../components/Spinner.dart';
import '../widgets/detail_row.dart';
import '../components/charge_text_fields.dart';
import '../widgets/charge_button.dart';
import '../../logic/charge_view_model.dart';

class ChargePage extends StatefulWidget {
  @override
  _ChargePageState createState() => _ChargePageState();
}

class _ChargePageState extends State<ChargePage> {
  double electric = 0;
  double battery = 0;
  String station = "PEA VOLTA บางจาก #1";
  String charger = "CCBZ";
  String charget = "00:12:32";
  final ChargeViewModel _chargeViewModel = ChargeViewModel(); // ViewModel สำหรับจัดการข้อมูล

  void _saveData() {
    _chargeViewModel.saveChargeData(
      electric: electric,
      battery: battery,
      station: station,
      charger: charger,
      charget: charget,
    );

    // ทดสอบดูข้อมูลที่เก็บไว้
    final savedData = _chargeViewModel.getChargeData();
    print("Saved Charge Data: ${savedData.toJson()}");
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BatteryProgressIndicator(
                  percentage: 100,
                  icons: Icons.battery_charging_full,
                  sector: "%",
                  content: "% แบตเตอรี่",
                  duration: Duration(minutes: 2),
                  onProgressUpdate: (current_percentage) {
                    battery = _chargeViewModel
                        .calculateElectricity(current_percentage);
                  },
                ),
                const SizedBox(width: 50),
                BatteryProgressIndicator(
                  percentage: 100,
                  icons: Icons.car_rental,
                  sector: "kW",
                  content: "กำลังไฟฟ้า",
                  duration: Duration(minutes: 2),
                  onProgressUpdate: (current_percentage) {
                    setState(() {
                      electric = _chargeViewModel.calculateElectricity(battery);
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "กรุณาเชื่อมต่อหัวชาร์จเข้ากับรถ",
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const Text(
                    "ก่อนกดปุ่ม 'เริ่มชาร์จ'",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "\t\t\t\tรายละเอียดการชาร์จ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
            const SizedBox(height: 24),
            ChargeTextFields(
              onChargerChange: (value) {
                setState(() {
                  charger = value;
                });
              },
              onChargetChange: (value) {
                setState(() {
                  charget = value;
                });
              },
              onStationChange: (value) {
                setState(() {
                  station = value;
                });
              },
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  const Icon(Icons.electric_bolt),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'หน่วยไฟ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 71, 71, 71)),
                      ),
                      Text(
                        '${electric.toStringAsFixed(2)} kwH',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: 
              ElevatedButton(
                  onPressed: () {
                    _saveData;
                    Navigator.pushNamed(
                      context,
                      '/main',
                      arguments:0
                    );
                  },
                  child: const Text(
                    "ตกลง",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
            ),
         
          ],
        ),
      ),
    );
  }
}
/*

*/