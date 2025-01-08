import 'package:flutter/material.dart';

class TextfieldsState extends StatefulWidget {
  final String initialValue;
  final String label;
  final ValueChanged<String> onChanged;
  const TextfieldsState(
      {Key? key,
      required this.initialValue,
      required this.onChanged,
      required this.label})
      : super(key: key);

  @override
  State<TextfieldsState> createState() => __TextfieldsStateState();
}

class __TextfieldsStateState extends State<TextfieldsState> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // กำหนดค่าเริ่มต้นให้กับ TextEditingController
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    // ล้าง Controller เมื่อ Widget ถูกลบ
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onChanged, // เรียก callback เมื่อมีการเปลี่ยนค่า
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 245, 229, 249),
        labelText: widget.label,
        border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), // ความโค้งของมุม
                borderSide: BorderSide.none, // ไม่มีเส้นรอบ
              ),
        
      ),
      obscureText: true,
    );
  }
}
