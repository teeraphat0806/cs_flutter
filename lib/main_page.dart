import 'package:flutter/material.dart';

import 'features/bill/presentation/page/bill_page.dart';
import 'features/charge/presentation/pages/charge_page.dart';
import 'features/payment/presentations/pages/payment_page.dart';
import 'features/paymentc/presentation/page/PaymentcPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _currentIndex;

  final List<Widget> _pages = [
    BillPage(),
    PaymentPage(),
    PaymentcPage(),
    ChargePage(),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // รับค่า arguments จาก Navigator และกำหนด index เริ่มต้น
    final args = ModalRoute.of(context)?.settings.arguments as int?;
    _currentIndex = args ?? 0; // ถ้าไม่มีค่า ส่งค่าเริ่มต้นเป็น 0
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        unselectedFontSize: 12,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.purple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'แผนที่',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'คิวอาร์โค้ด',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'เติมเงิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'ข้อมูลผู้ใช้',
          ),
        ],
      ),
    );
  }
}