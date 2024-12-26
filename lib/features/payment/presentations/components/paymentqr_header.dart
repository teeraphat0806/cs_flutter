import 'package:flutter/material.dart';

class PaymentqrHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main',arguments: {'index':2,'usePages':true});
              },
              icon: const Icon(
                Icons.arrow_circle_left_rounded,
                color: Colors.purple,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'เติมเงินด้วยพร้อมเพย์',
              style: TextStyle(color: Colors.purple),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/prompay.png', width: 120),
          ],
        ),
        const SizedBox(height: 20),
        const Text("กรุณาเลือกจำนวนเงินที่ต้องการ (บาท)"),
        const SizedBox(height: 20),
      ],
    );
  }
}
