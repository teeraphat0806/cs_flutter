import 'package:flutter/material.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({Key? key}) : super(key: key);

  @override
  _TermsCheckboxState createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        const Expanded(
          child: Text(
            "ข้าพเจ้าได้อ่านและตกลงยอมรับข้อกำหนดและเงื่อนไขการให้บริการ",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
