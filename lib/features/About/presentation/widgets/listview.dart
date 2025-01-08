/*import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Listview extends StatefulWidget {
  final String label; // ข้อความที่จะแสดง
  final String url; // URL ที่จะเปิด
  final Icon icon; // ไอคอนที่แสดงใน Card

  const Listview({
    super.key,
    required this.label,
    required this.url,
    required this.icon,
  });

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url); // แปลง URL เป็น Uri
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication); // เปิด URL
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: GestureDetector(
        onTap: () {
          _launchUrl(widget.url); // เรียกฟังก์ชันเปิด URL
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.white,
          child: Row(
            children: [
              widget.icon, // แสดงไอคอน
              const SizedBox(width: 10),
              Text(widget.label), // แสดงข้อความ
              const Spacer(), // เพิ่มระยะห่าง
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
*/