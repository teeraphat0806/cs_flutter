import 'package:flutter/material.dart';
import 'amount_button.dart';

class PaymentButtonsRow extends StatelessWidget {
  final List<int> prices;
  final int selectedIndex;
  final Function(int) onSelect;

  const PaymentButtonsRow({
    required this.prices,
    required this.selectedIndex,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: prices.sublist(0, 3).asMap().entries.map((entry) {
            int index = entry.key;
            int price = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AmountButton(
                amount: price,
                isSelected: selectedIndex == index,
                onTap: () => onSelect(index),
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: prices.sublist(3).asMap().entries.map((entry) {
            int index = entry.key + 3;
            int price = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AmountButton(
                amount: price,
                isSelected: selectedIndex == index,
                onTap: () => onSelect(index),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
