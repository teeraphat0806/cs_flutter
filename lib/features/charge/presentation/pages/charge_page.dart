import 'package:cs_flutter/features/charge/logic/charge_view_model.dart';
import 'package:flutter/material.dart';
import '../components/Spinner.dart';
import '../widgets/detail_row.dart';
import '../components/charge_text_fields.dart';
import '../widgets/charge_button.dart';

class ChargePage extends StatefulWidget {
  @override
  _ChargePageState createState() => _ChargePageState();
}

class _ChargePageState extends State<ChargePage> {
  double electric = 0;
  double battery = 0;
  final ChargeViewModel _chargeViewModel = new ChargeViewModel();
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
                        onProgressUpdate: (current_percentage){
                          battery = _chargeViewModel.calculateElectricity(current_percentage);
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
      electric = _chargeViewModel.calculateElectricity(battery);
    });
                        
                        },
),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "กรุณาเชื่อมต่อหัวชาร์จเข้ากับรถก่อนกดปุ่ม 'เริ่มชาร์จ'",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(height: 40),
            const Text(
              "รายละเอียดการชาร์จ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            const SizedBox(height: 24),
            ChargeTextFields(onElectricChange: (value) {
              setState(() {
                electric = value;
              });
            }),
            const SizedBox(height: 40),
            ChargeButton(electric: electric),
          ],
        ),
      ),
    );
  }
}
