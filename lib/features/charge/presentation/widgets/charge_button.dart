import 'package:flutter/material.dart';

class ChargeButton extends StatefulWidget {
  final double electric;
  final String station;
  final String charger;
  final String charget;
  const ChargeButton({required this.electric,required this.charger,required this.charget,required this.station, Key? key}): super(key:key);
  @override
  _ChargeButtonState createState() => _ChargeButtonState();
}
class _ChargeButtonState extends State<ChargeButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/bill',
          arguments: {
            'elect': widget.electric.toStringAsFixed(2),
            'charget': widget.charget,
            'charger': widget.charger,
            'station': widget.station,
          },
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
