import 'package:cs_flutter/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'bill.dart';
import 'charge.dart';
import 'login.dart';
import 'register.dart';
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
    data datas = new data();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 56, 2, 81)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 156, 5, 198)),
        useMaterial3: true,
      ),
      initialRoute: '/register',
      routes: {
        '/': (context) => Loginpage(),
        '/bill' : (context) => Billpage(),
        '/charge' : (context) => Chargepage(),
        '/register': (context) => Registerpage(),
      },
 
    );
    
  }
}

