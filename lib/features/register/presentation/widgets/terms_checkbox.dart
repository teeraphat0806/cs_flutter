import 'package:flutter/material.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({Key? key}) : super(key: key);

  @override
  _TermsCheckboxState createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool isChecked = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        ),Row(
          children: [
            Checkbox(
              value: isChecked2,
              onChanged: (value) {
                setState(() {
                  isChecked2 = value ?? false;
                });
              },
            ),
            const Expanded(
              child: Text(
                "ข้าพเจ้าได้อ่านและตกลงยอมรับหนังสือแจ้งข้อมูลในการเก็บรวบรวม ใช้ และเปิดเผยข้อมูลส่วนบุคคล",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
