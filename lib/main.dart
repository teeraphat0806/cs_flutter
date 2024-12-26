import 'package:cs_flutter/features/qrcode/presentation/pages/qr_code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'features/register/presentation/page/register_page.dart';
import 'main_page.dart'; // นำเข้า MainPage ที่จัดการ BottomNavigationBar

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 56, 2, 81)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 156, 5, 198),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // หน้าแรก Login
        '/main': (context) => MainPage(), // MainPage มี BottomNavigationBar
        '/register': (context) => RegisterPage(),
        '/qrcode': (context)=> QrcodePage()
      },
    );
  }
}
