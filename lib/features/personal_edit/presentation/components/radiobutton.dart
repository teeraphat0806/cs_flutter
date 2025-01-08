import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  // Parameter สำหรับรับค่าจากภายนอก
  final String initialOption; 
  final ValueChanged<String> onChanged; // Callback สำหรับส่งค่ากลับไป

  const Radiobutton({
    Key? key,
    required this.initialOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  late String selectedOption;

  @override
  void initState() {
    super.initState();
    // กำหนดค่าเริ่มต้นจาก parameter
    selectedOption = widget.initialOption;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          groupValue: selectedOption,
          value: 'บุคคลธรรมดา',
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
              widget.onChanged(selectedOption); // ส่งค่ากลับไป
            });
          },
        ),
        Text(
          'บุคคลธรรมดา',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Radio<String>(
          groupValue: selectedOption,
          value: 'ชาวต่างชาติ',
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
              widget.onChanged(selectedOption); // ส่งค่ากลับไป
            });
          },
        ),
        Text(
          'ชาวต่างชาติ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Radio<String>(
          groupValue: selectedOption,
          value: 'นิติบุคคล',
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
              widget.onChanged(selectedOption); // ส่งค่ากลับไป
            });
          },
        ),
        Text(
          'นิติบุคคล',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
