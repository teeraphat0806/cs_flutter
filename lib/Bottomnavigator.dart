import 'package:flutter/material.dart';

class Bottomnavigator extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const Bottomnavigator({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<Bottomnavigator> createState() => _BottomnavigatorState();
}

class _BottomnavigatorState extends State<Bottomnavigator> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    selectedFontSize: 12,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white70,
    unselectedFontSize: 12,
    iconSize: 24, // ลดขนาดไอคอน
    currentIndex: widget.currentIndex,
    onTap: widget.onTap,
    type:BottomNavigationBarType.fixed,
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
    
  );

  }
}
