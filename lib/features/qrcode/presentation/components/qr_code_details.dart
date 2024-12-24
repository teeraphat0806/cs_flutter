import 'package:flutter/material.dart';

class QrcodeDetails extends StatelessWidget {
  final int price;

  const QrcodeDetails({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datenow =
        '${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')} '
        '${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}:${DateTime.now().second.toString().padLeft(2, '0')}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('วันที่สร้างคิวอาร์\n$datenow'),
        Text('จำนวนเงิน\n$price', textAlign: TextAlign.right),
      ],
    );
  }
}
