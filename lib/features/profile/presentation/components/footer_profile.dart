import 'package:flutter/material.dart';
import '../widgets/list_button.dart';
class FooterProfile extends StatefulWidget {
  const FooterProfile({super.key});

  @override
  State<FooterProfile> createState() => _FooterProfileState();
}

class _FooterProfileState extends State<FooterProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'ตั้งค่าผู้ใช้งาน',
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListButton()
                      //                    ListButton()
                    ],
                  ),
                ),
              );
  }
}