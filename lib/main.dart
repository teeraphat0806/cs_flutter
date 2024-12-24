import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'features/bill/presentation/page/bill_page.dart';
import 'features/charge/presentation/pages/charge_page.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'features/register/presentation/page/register_page.dart';
import 'features/payment/presentations/pages/payment_page.dart';
import 'features/qrcode/presentation/pages/qr_code_page.dart';
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
      initialRoute: '/payment',
      routes: {
        '/': (context) => LoginPage(),
        '/bill' : (context) => BillPage(),
        '/charge' : (context) => ChargePage(),
        '/register': (context) => RegisterPage(),
        '/payment' : (context) => PaymentPage(),
        '/qrcode' : (context) => QrcodePage(),
      },
 
    );
    
  }
}

