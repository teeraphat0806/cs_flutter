import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> data; // รายการตัวเลือก
  final String label; // Label สำหรับ Dropdown
  final ValueChanged<String?> onChanged; // Callback สำหรับส่งค่ากลับ
  final String? initialValue; // ค่าเริ่มต้นที่เลือกได้ (Optional)

  const CustomDropdown({
    Key? key,
    required this.data,
    required this.label,
    required this.onChanged,
    this.initialValue, // ค่าเริ่มต้นที่ส่งมาจาก parent
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue; // ตัวเลือกที่ถูกเลือกใน Dropdown

  @override
  void initState() {
    super.initState();
    // กำหนดค่าเริ่มต้นให้ selectedValue จาก initialValue (ถ้ามี)
    if (widget.initialValue != null &&
        widget.data.contains(widget.initialValue)) {
      selectedValue = widget.initialValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 229, 249), // พื้นหลังสีอ่อน
        borderRadius: BorderRadius.circular(8), // ความโค้งของขอบ
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          hint: Text(widget.label, style: const TextStyle(color: Colors.grey)),
          isExpanded: true,
          items: widget.data.map((String choice) {
            return DropdownMenuItem<String>(
              value: choice,
              child: Text(choice),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value; // อัปเดตค่าใน state
            });
            widget.onChanged(value); // ส่งค่ากลับไปยัง parent widget
          },
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CustomDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    // อัปเดต selectedValue เมื่อรายการ data เปลี่ยน
    if (!widget.data.contains(selectedValue)) {
      setState(() {
        selectedValue = null; // รีเซ็ตค่าเมื่อ selectedValue ไม่มีใน data
      });
    }
  }
}
