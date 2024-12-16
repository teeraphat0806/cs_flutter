import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 56, 2, 81)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 156, 5, 198)),
        useMaterial3: true,
      ),
      
      home: Scaffold(appBar: AppBar(centerTitle: true,title: Image.asset('assets/images/pealogo.png',width: 100),),
      body: const MyHomePage(title: "hello"),
        
      )
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class data {
  var date_now = DateTime.now().year.toString()+"-"+ DateTime.now().month.toString()+ "-"+ DateTime.now().day.toString();
  var station = "PEA VOLTA บางจาก #1";
  var charger = "CCBZ";
  var charget = "00:12:32";
  var elect = 9.134;
  var price = 49.36;
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    data datas = new data();
    var space = 70.77;
    return Scaffold(
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
                    const Text(
                      "ขอบคุณที่ใช้บริการ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20),
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