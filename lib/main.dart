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
      /*
      body: Column(children: [
        const Text("Gandalf AK47",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900),),
        Image.network('https://preview.redd.it/gandalf-holding-an-ak-v0-ojx9hrnq585b1.jpg?width=1080&crop=smart&auto=webp&s=15b127a28b70e7e2e1a689424517e875753691f8'),
        Row(
          children: [
            ElevatedButton(onPressed: () {debugPrint('clicked button');}, child: const Text("PRESSED")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite),iconSize: 40,color: Colors.yellow,)
          ],
        ),
        FloatingActionButton(onPressed: (){debugPrint('Hello');},child: const Icon(Icons.shopping_cart),),
        Image.asset("assets/images/gandalfak.jpg"),
        
      ],
      */

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
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Center(child: Image.asset('assets/images/pealogo.png',width: 150)),
            Center(child: Text("ขอบคุณที่ใช้บริการ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
            Center(child: Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 18),)),
            Padding(padding: EdgeInsets.fromLTRB(0, 70, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ 
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text("สรุปรายละเอียดการชาร์จ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                
              ],
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 80, 0, 0)),
                    Icon(Icons.calendar_month,size: 30,),
                    Text("วันที่ชาร์จ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.fromLTRB(70,0, 100, 0)),
                    Text(datas.date_now,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100)),
                  ],
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 80, 0, 0)),
                    Icon(Icons.ev_station_rounded,size: 30,),
                    Text("สถานีชาร์จ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.fromLTRB(50,0, 0, 0)),
                    Text(datas.station,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                  ],
            ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                    Icon(Icons.power,size: 30,),
                    Text("ประเภทหัวชาร์จ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.fromLTRB(150,0, 0, 0)),
                    Text(datas.charger,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                  ],
            ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                    Icon(Icons.alarm,size: 30,),
                    Text("ระยะเวลาการชาร์จ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.fromLTRB(100,0, 0, 0)),
                    Text(datas.charget,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                  ],
            ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                    Icon(Icons.electric_bolt,size: 30,),
                    Text("จำนวนหน่วย",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                    Padding(padding: EdgeInsets.fromLTRB(135,0, 0, 0)),
                    Text(datas.elect.toString() + " kWh" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                  ],
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(10, 200, 0, 0)),
                    Text("ค่าบริการรวมทั้งสิ้น",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w100,color: Color.fromARGB(255, 143, 34, 194)),),
                    Padding(padding: EdgeInsets.fromLTRB(80,0, 0, 0)),
                    Text(datas.price.toString()+"บาท",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Color.fromARGB(255, 143, 34, 194)),),
                  ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
