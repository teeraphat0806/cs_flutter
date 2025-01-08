import 'package:flutter/material.dart';

class Dropdown_payment extends StatefulWidget {
  const Dropdown_payment({super.key});

  @override
  State<Dropdown_payment> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown_payment> {
  var drop_down;
  List<String> Month = [
    'มกราคม',
    'กุมภาพันธ์',
    'มีนาคม',
    'เมษายน',
    'พฤษภาคม',
    'มิถุนายน',
    'กรกฏาคม',
    'สิงหาคม',
    'กันยายน',
    'ตุลาคม',
    'พฤศจิกายน',
    'ธันวาคม'
  ];
  @override
  Widget build(BuildContext context) {
    drop_down = 'ธันวาคม';
    return Center(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.grey, // สีพื้นหลังของปุ่ม
              borderRadius: BorderRadius.circular(8), // มุมโค้งของปุ่ม
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: DropdownButton<String>(
              value: drop_down,
              style: const TextStyle(color: Colors.black),
              dropdownColor: Colors.white, // สีพื้นหลังของ dropdown
              icon: const SizedBox.shrink(),
              underline: Container(
                height: 2,
              ),
              onChanged: (String? value) {
                setState(() {
                  drop_down = value;
                });
              },
              items: Month.map((item) => DropdownMenuItem<String>(
                    value: item, // ค่าเมื่อเลือก item นี้
                    child: Text(
                      item,
                      style: TextStyle(
                        color: drop_down == item
                            ? Colors.white
                            : Colors.black, // เปลี่ยนสีข้อความตามสถานะที่เลือก
                      ),
                    ), // ข้อความที่จะแสดงในรายการ
                  )).toList(),
            )));
  }
}
