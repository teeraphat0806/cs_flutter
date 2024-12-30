import 'package:cs_flutter/features/profile/presentation/widgets/list_button.dart';
import 'package:cs_flutter/features/profile/presentation/widgets/list_view.dart';
import 'package:flutter/material.dart';
import '../../data/profile_repository.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ProfileRepository user = ProfileRepository.mock();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "ข้อมูลผู้ใช้",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      user.imageCar,
                      width: 120,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ProfileListView(),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
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
              )
            ],
          ),
        ),
      )),
    );
  }
}
