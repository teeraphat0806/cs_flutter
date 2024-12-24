import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // ตัวอย่างโค้ดสำหรับบันทึกไฟล์
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.save_alt, color: Colors.white),
          SizedBox(width: 5),
          Text(
            'บันทึก',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
