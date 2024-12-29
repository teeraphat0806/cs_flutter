import 'package:flutter/material.dart';
import '../widgets/terms_checkbox.dart';
import '../widgets/register_button.dart';
import '../../logic/register_view_model.dart';

class CheckPassword extends StatefulWidget {
  final String password;
  final String email;
  const CheckPassword({Key? key, required this.password, required this.email})
      : super(key: key);

  @override
  State<CheckPassword> createState() => _CheckPasswordState();
}

class _CheckPasswordState extends State<CheckPassword> {
  final RegisterViewModel _viewModel = RegisterViewModel();
  @override
  Widget build(BuildContext context) {
    final validations = _viewModel.validatePassword(
        widget.password, widget.email); // ตรวจสอบผ่าน ViewModel
    final passwordStrength = _viewModel
        .checkPasswordStrength(widget.password); // ความแข็งแรงของรหัสผ่าน

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // แสดงระดับความแข็งแรงของรหัสผ่าน
              Row(
                children: [
                  Icon(
                    passwordStrength['pass']
                        ? Icons.check
                        : Icons
                            .close, // Use a valid IconData here, like Icons.security
                    color: passwordStrength[
                        'color'], // Apply the color from passwordStrength
                  ),
                  const SizedBox(width: 10),
                  Text('ความยากของรหัสผ่าน: ', style: TextStyle(fontSize: 13)),
                  Text('${passwordStrength['level']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: passwordStrength['color'],
                          fontSize: 13)),
                ],
              ),

              // แสดงรายการการตรวจสอบ
              ...validations.map((validation) {
                return Row(
                  children: [
                    Icon(
                      validation['status'] ? Icons.check : Icons.close,
                      color: validation['status']
                          ? Colors.greenAccent
                          : Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      validation['message'],
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                );
              }).toList(),
              const SizedBox(height: 30),
              const TermsCheckbox(),
              const SizedBox(height: 30),
              RegisterButton(),
            ],
          ),
        ),
      ],
    );
  }
}
