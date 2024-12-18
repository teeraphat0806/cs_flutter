import 'package:cs_flutter/charge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 

import 'data.dart';
class Billpage extends StatelessWidget {
  final data datas = new data();
  Billpage({super.key });
  @override
  Widget build(BuildContext context) {
    
    var space = 70.77;
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Image.asset('assets/images/pealogo.png',width: 100),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: <Widget>[
            Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Image.asset('assets/images/pealogo.png', width: 150),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "ขอบคุณที่ใช้บริการ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),Card(color: Colors.purple,child: Padding(padding: const EdgeInsets.all(10),child: const Text("PEA",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),),
                      ],
                    ),
                    const Text(
                      "เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "สรุปรายละเอียดการชาร์จ",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              const SizedBox(height: 24),
              DetailRow(
                icon: Icons.calendar_month,
                label: "วันที่ชาร์จ",
                value: datas.date_now,
              ),
              DetailRow(
                icon: Icons.ev_station_rounded,
                label: "สถานีชาร์จ",
                value: datas.station,
              ),
              DetailRow(
                icon: Icons.power,
                label: "ประเภทหัวชาร์จ",
                value: datas.charger,
              ),
              DetailRow(
                icon: Icons.alarm,
                label: "ระยะเวลาการชาร์จ",
                value: datas.charget,
              ),
              DetailRow(
                icon: Icons.electric_bolt,
                label: "จำนวนหน่วย",
                value: "${datas.elect} kWh",
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
                        color: Color.fromARGB(255, 143, 34, 194)),
                  ),
                  Text(
                    "${datas.price} บาท",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 143, 34, 194)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/');}, child: const Text("ตกลง",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,padding: const EdgeInsets.symmetric(horizontal:  170,vertical: 16),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
          ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ));
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
