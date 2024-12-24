import 'package:flutter/material.dart';

class QrcodeImage extends StatelessWidget {
  final int price;

  const QrcodeImage({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const qrMap = {
      100: 'assets/images/qr100.jpeg',
      200: 'assets/images/qr200.jpeg',
      300: 'assets/images/qr300.jpeg',
      1000: 'assets/images/qr1000.jpeg',
      2000: 'assets/images/qr2000.jpeg',
      3000: 'assets/images/qr3000.jpeg',
    };

    return qrMap.containsKey(price)
        ? Image.asset(qrMap[price]!, width: 200)
        : throw Exception('Invalid price: $price');
  }
}
