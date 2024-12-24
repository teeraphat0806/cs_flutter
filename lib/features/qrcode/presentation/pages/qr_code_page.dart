import 'package:flutter/material.dart';
import '../widgets/qr_code_image.dart';
import '../widgets/save_button.dart';
import '../components/qr_code_header.dart';
import '../components/qr_code_details.dart';
import '../../../../core/ui/bottom_navigation.dart';
class QrcodePage extends StatefulWidget {
  const QrcodePage({super.key});

  @override
  _QrcodePageState createState() => _QrcodePageState();
}

class _QrcodePageState extends State<QrcodePage> {
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
    final price = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: Center(
        child: Column(
          children: [
            QrcodeHeader(),
            Container(
              color: Colors.white70,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  QrcodeImage(price: price),
                  const SizedBox(height: 20),
                  QrcodeDetails(price: price),
                ],
              ),
            ),
            const SizedBox(height: 200),
            SaveButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigator(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
