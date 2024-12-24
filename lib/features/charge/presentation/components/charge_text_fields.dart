import 'package:flutter/material.dart';

class ChargeTextFields extends StatelessWidget {
  final Function(double) onElectricChange;

  const ChargeTextFields({required this.onElectricChange, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController electricController = TextEditingController();

    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.ev_station_rounded),
            labelText: 'สถานีชาร์จ',
          ),
        ),
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.power),
            labelText: 'ประเภทหัวชาร์จ',
          ),
        ),
        TextField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.alarm),
            labelText: 'ระยะเวลาการชาร์จ',
          ),
        ),
        TextField(
          controller: electricController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.electric_bolt),
            labelText: 'จำนวนหน่วย',
          ),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            double electricValue = double.tryParse(value) ?? 0;
            onElectricChange(electricValue);
          },
        ),
      ],
    );
  }
}
