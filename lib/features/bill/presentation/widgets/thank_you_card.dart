import 'package:flutter/material.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Image.asset('assets/images/pealogo.png', width: 150),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "ขอบคุณที่ใช้บริการ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            Card(
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "PEA",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const Text(
          "เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ",
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
        ),
      ],
    );
  }
}
