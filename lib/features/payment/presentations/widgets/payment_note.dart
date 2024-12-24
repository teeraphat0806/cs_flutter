import 'package:flutter/material.dart';

class PaymentNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 50, 18, 50),
      child: const Text(
        "หมายเหตุ: ค่าธรรมเนียมการใช้บัตรเครดิต หรือ บัตรเดบิต ให้เป็นไปตามเงื่อนไขที่ธนาคารกำหนด",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
