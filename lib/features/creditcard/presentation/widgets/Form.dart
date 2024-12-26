import 'package:flutter/material.dart';

class Formss extends StatefulWidget {
  const Formss({super.key});

  @override
  State<Formss> createState() => _FormState();
}

class _FormState extends State<Formss> {
  final TextEditingController _cardnumber_controller = TextEditingController();
  final TextEditingController _name_controller = TextEditingController();
  final TextEditingController _dateexpired_controller = TextEditingController();
  final TextEditingController _cvv_controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _cardnumber_controller.dispose();
    _name_controller.dispose();
    _dateexpired_controller.dispose();
    _cvv_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('หมายเลขบัตร :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        TextField(
            controller: _cardnumber_controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: '**** **** **** ****',
            )),
        Text('ชื่อผู้ถือบัตร :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        TextField(
            controller: _name_controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'ชื่อผู้ถือบัตร',

            )),
        Text('วันที่หมดอายุ :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        TextField(
            controller: _dateexpired_controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'ดด / ปป',
            )),
        Text('CVV :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        TextField(
            controller: _cvv_controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: '***:',
            )),
      ],
    );
  }
}
