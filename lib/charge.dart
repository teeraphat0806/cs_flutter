import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'data.dart';
import 'Animation/Spinner.dart';
class Chargepage extends StatelessWidget {
  final data datas = new data();
  Chargepage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
       appBar: AppBar(centerTitle: true,title: Image.asset('assets/images/pealogo.png',width: 100),),
       body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BatteryProgressIndicator(percentage: 10,icons: Icons.battery_charging_full,sector: "%",content: "% แบตเตอรี่",),
                        SizedBox(width: 50,),
                        BatteryProgressIndicator(percentage: 50,icons: Icons.car_rental,sector: "kW",content: "กำลังไฟฟ้า",),            
                      ],
                    ),
                    SizedBox(height: 40,),
                    const Text("กรุณาเชื่อมต่อหัวชาร์จเข้ากับรถ",style: TextStyle(color:Colors.purple,fontWeight: FontWeight.w700,fontSize: 20),),
                    const Text("ก่อนกดปุ่ม 'เริ่มชาร์จ'"),
                    const SizedBox(height: 40,),
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
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.ev_station_rounded),
                labelText: 'สถานีชาร์จ', // ป้ายกำกับ
                hintText: "${datas.station}", // ข้อความแนะนำ
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.power),
                labelText: 'ประเภทหัวชาร์จ', // ป้ายกำกับ
                hintText: "${datas.charger}", // ข้อความแนะนำ
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.alarm),
                labelText: 'ระยะเวลาการชาร์จ', // ป้ายกำกับ
                hintText: "${datas.charget}", // ข้อความแนะนำ
              ),
            ), 
            TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.electric_bolt),
                labelText: 'จำนวนหน่วย', // ป้ายกำกับ
                hintText: "${datas.elect} kWh", // ข้อความแนะนำ
              ),
            ),
            const SizedBox(height:40),
            ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/second');}, child: const Text("ตกลง",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,padding: const EdgeInsets.symmetric(horizontal:  170,vertical: 16),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
            
          ],
        ),
       );
  }
}class DetailRow extends StatelessWidget {
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
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
