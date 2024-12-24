import 'package:flutter/material.dart';

class ChargeButton extends StatelessWidget {
  final double electric;

  const ChargeButton({required this.electric, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/bill',
          arguments: {'electric': electric.toStringAsFixed(2)},
        );
      },
      child: const Text(
        "ตกลง",
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
