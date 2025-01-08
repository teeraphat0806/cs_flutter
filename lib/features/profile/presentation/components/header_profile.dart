import 'package:flutter/material.dart';
import '../../data/profile_repository.dart';
import '../widgets/list_view.dart';
class HeaderProfile extends StatefulWidget {
  final ProfileRepository user; // รับ parameter user

  const HeaderProfile({super.key, required this.user}); // กำหนดให้เป็น required parameter

  @override
  State<HeaderProfile> createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "ข้อมูลผู้ใช้",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            widget.user.imageCar, // ใช้ widget.user เพื่อเข้าถึงตัวแปร user
            width: 120,
          ),
          const SizedBox(
            height: 30,
          ),
          ProfileListView(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
