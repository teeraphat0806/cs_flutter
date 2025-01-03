import 'package:flutter/material.dart';
import '../widgets/payment_buttons_row.dart';
import '../widgets/payment_note.dart';
import '../components/paymentqr_header.dart';
class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
            PaymentqrHeader(),
            PaymentButtonsRow(
              prices: priceOptions,
              selectedIndex: _selectedIndex,
              onSelect: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/qrcode',
                  arguments: priceOptions[_selectedIndex],
                );
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
