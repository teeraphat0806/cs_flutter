import 'package:cs_flutter/features/personal_edit/data/car.dart';
import 'package:cs_flutter/features/personal_edit/data/personal_edit_repository.dart';
import 'package:flutter/material.dart';
import '../components/radiobutton.dart';
import '../widgets/Textfield.dart';
import '../../data/personal_edit_repository.dart';
import '../widgets/Dropdowns.dart';
import '../../data/province.dart';

class PersonalEditPage extends StatefulWidget {
  const PersonalEditPage({super.key});

  @override
  State<PersonalEditPage> createState() => _PersonalEditPageState();
}

class _PersonalEditPageState extends State<PersonalEditPage> {
  String currentSelection = 'บุคคลธรรมดา';
  Dataform dataform = new Dataform();
  ProvinceManager provinceManager = new ProvinceManager();
  ElectricCarManager electricCarManager = new ElectricCarManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/pealogo.png', width: 100),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: (Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_circle_left_rounded,
                              size: 40,
                              color: Colors.purple,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/main',
                                  arguments: {'index': 3, 'usePages': true});
                            },
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            'ข้อมูลผู้ใช้',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('กรุณากรอกข้อมูลผู้ใช้ให้ครบถ้วน'),
                          Text('ก่อนเริ่มการใช้งานแอพพลิเคชั่นแบบสมบูรณ์'),
                          SizedBox(
                            height: 20,
                          ),
                          Radiobutton(
                            initialOption: currentSelection, // ส่งค่าเริ่มต้น
                            onChanged: (newValue) {
                              setState(() {
                                currentSelection =
                                    newValue; // รับค่าที่เปลี่ยนแปลง
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextfieldsState(
                                    initialValue: dataform.NameCompany,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.NameCompany =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "ชื่อบริษัท"),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.NumberIdentity,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.NumberIdentity =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "เลขประจำตัวผู้เสียภาษีอากร"),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.Branch,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.Branch =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "สาขา(ถ้ามี)"),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.Phone,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.Phone =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "เบอร์โทรศัพท์"),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.Address,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.Address =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "ที่อยู่ (เลขที่,ถนน,ซอย)"),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.PostNumber,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.PostNumber =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "รหัสไปรษณีย์"),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomDropdown(
                                    data: ProvinceManager.listData,
                                    label: 'จังหวัด',
                                    onChanged: (value) {
                                      setState(() {
                                        provinceManager.selectedProvince =
                                            value;
                                      });
                                    }),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomDropdown(
                                    data: ElectricCarManager.brands,
                                    label: 'ยี่ห้อรถ',
                                    onChanged: (value) {
                                      setState(() {
                                        electricCarManager.selectedBrand =
                                            value;
                                      });
                                    }),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomDropdown(
                                  data: electricCarManager.selectedBrand != null
                                      ? electricCarManager.getModels(
                                          electricCarManager.selectedBrand!)
                                      : [], // ถ้ายังไม่ได้เลือกยี่ห้อ ให้ส่ง List ว่างไป
                                  label: 'รุ่นรถ',
                                  onChanged: (value) {
                                    setState(() {
                                      electricCarManager.selectedModel =
                                          value; // เก็บรุ่นรถที่เลือก
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextfieldsState(
                                    initialValue: dataform.plate,
                                    onChanged: (newValue) {
                                      setState(() {
                                        dataform.plate =
                                            newValue; // อัปเดตค่าเมื่อ TextField เปลี่ยน
                                      });
                                    },
                                    label: "เลขทะเบียนรถ"),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/main',
                                        arguments: {
                                          'index': 3,
                                          'usePages': true
                                        });
                                  },
                                  child: const Text(
                                    "บันทึกข้อมูล",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 184, 163, 3),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 145, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
