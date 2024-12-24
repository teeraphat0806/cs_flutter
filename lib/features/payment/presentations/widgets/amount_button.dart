import 'package:flutter/material.dart';

class AmountButton extends StatelessWidget {
  final int amount;
  final bool isSelected;
  final VoidCallback onTap;

  const AmountButton({
    required this.amount,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected
            ? Colors.purple
            : const Color.fromARGB(255, 252, 236, 255),
        foregroundColor: isSelected ? Colors.white : Colors.black,
        side: const BorderSide(color: Colors.purple),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      ),
      child: Text(
        '$amount',
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
