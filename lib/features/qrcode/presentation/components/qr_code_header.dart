import 'package:flutter/material.dart';

class QrcodeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/payment');
          },
          icon: const Icon(
            Icons.arrow_circle_left_rounded,
            color: Colors.purple,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'เติมเงินด้วย THAI QR',
          style: TextStyle(color: Colors.purple),
        ),
      ],
    );
  }
}
