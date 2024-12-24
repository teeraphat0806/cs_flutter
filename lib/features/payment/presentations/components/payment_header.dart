import 'package:flutter/material.dart';

class PaymentHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_circle_left_rounded,
                color: Colors.purple,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'เติมเงินด้วยบัตรเครดิต/เดบิต',
              style: TextStyle(color: Colors.purple),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/visa.png', width: 50),
            const SizedBox(width: 10),
            Image.asset('assets/images/mastercard.png', width: 50),
            const SizedBox(width: 10),
            Image.asset('assets/images/unionpay.png', width: 50),
          ],
        ),
        const SizedBox(height: 20),
        const Text("กรุณาเลือกจำนวนเงินที่ต้องการ (บาท)"),
        const SizedBox(height: 20),
      ],
    );
  }
}
