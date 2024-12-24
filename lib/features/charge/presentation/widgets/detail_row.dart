import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
