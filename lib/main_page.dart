import 'package:cs_flutter/features/creditcard/presentation/pages/CreditcardPage.dart';
import 'package:flutter/material.dart';

import 'features/bill/presentation/page/bill_page.dart';
import 'features/charge/presentation/pages/charge_page.dart';
import 'features/payment/presentations/pages/payment_page.dart';
import 'features/paymentc/presentation/page/PaymentcPage.dart';
import 'features/payment/presentations/pages/payment_credit.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _currentIndex;
  late bool _usePages; // ตัวแปรเพื่อบอกว่าจะใช้ `_pages` หรือ `_page`

  // Widget list `_pages`
  final List<Widget> _pages = [
    BillPage(),
    PaymentPage(),
    PaymentcPage(),
    ChargePage(),
  ];

  // Widget list `_page`
  final List<Widget> _page = [
    PaymentcreditPage(),
    PaymentPage(),
    CreditcardPage(),
  

  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // รับ arguments จาก Navigator และกำหนดค่าเริ่มต้น
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    _currentIndex = args?['index'] ?? 0; // ค่าเริ่มต้นของ index
    _usePages = args?['usePages'] ?? true; // ค่าเริ่มต้นว่าจะใช้ `_pages` (true) หรือ `_page` (false)
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _usePages ? _pages[_currentIndex] : _page[_currentIndex],
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
