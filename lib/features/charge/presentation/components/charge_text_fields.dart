import 'package:flutter/material.dart';

class ChargeTextFields extends StatefulWidget {
  final Function(String) onStationChange;
  final Function(String) onChargerChange;
  final Function(String) onChargetChange;

  const ChargeTextFields({
    required this.onStationChange,
    required this.onChargerChange,
    required this.onChargetChange,
    Key? key,
  }) : super(key: key);

  @override
  _ChargeTextFieldsState createState() => _ChargeTextFieldsState();
}

class _ChargeTextFieldsState extends State<ChargeTextFields> {
  late final TextEditingController stationController;
  late final TextEditingController chargerController;
  late final TextEditingController chargetController;

  @override
  void initState() {
    super.initState();
    stationController = TextEditingController();
    chargerController = TextEditingController();
    chargetController = TextEditingController();
    stationController.text = "PEA VOLTA บางจาก #1";
    chargerController.text = "CCBZ";
    chargetController.text = "00:12:32";
  }

  @override
  void dispose() {
    stationController.dispose();
    chargerController.dispose();
    chargetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: stationController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.ev_station_rounded),
            labelText: 'สถานีชาร์จ',
          ),
          onChanged: widget.onStationChange,
        ),
        TextField(
          controller: chargerController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.power),
            labelText: 'ประเภทหัวชาร์จ',
          ),
          onChanged: widget.onChargerChange,
        ),
        TextField(
          controller: chargetController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.alarm),
            labelText: 'ระยะเวลาการชาร์จ',
          ),
          onChanged: widget.onChargetChange,
        ),
        
      ],
    );
  }
}
