import 'package:flutter/material.dart';
import '../widgets/payment_buttons_row.dart';
import '../widgets/payment_note.dart';
import '../components/payment_header.dart';

class PaymentcreditPage extends StatefulWidget {
  @override
  _PaymentcreditState createState() => _PaymentcreditState();
}
class _PaymentcreditState extends State<PaymentcreditPage>{
  final List<int> priceOptions = [100, 200, 300, 1000, 2000, 3000];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PaymentHeader(),
            PaymentButtonsRow(
              prices: priceOptions,
              selectedIndex: _selectedIndex,
              onSelect: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            PaymentNote(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main',arguments: {'index':2,'usePages':false});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 37, 200, 1),
                padding: const EdgeInsets.symmetric(
                    horizontal: 110, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'เติมเงิน',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
