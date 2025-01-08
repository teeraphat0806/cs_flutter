import 'package:cs_flutter/features/profile/presentation/components/footer_profile.dart';
import 'package:cs_flutter/features/profile/presentation/components/header_profile.dart';
import 'package:cs_flutter/features/profile/presentation/components/not_resign.dart';
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
  var resign = true;
  Widget resign_func(BuildContext context) {
    return Column(
      children: [
        HeaderProfile(user: user),
        SizedBox(
          height: 20,
        ),
        FooterProfile(),
      ],
    );
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              resign?resign_func(context):NotResign(),
            ],
          ),
        ),
      )),
    );
  }
}
