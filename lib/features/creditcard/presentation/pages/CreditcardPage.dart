import 'package:cs_flutter/features/creditcard/presentation/widgets/form.dart';
import 'package:flutter/material.dart';

class CreditcardPage extends StatefulWidget {
  const CreditcardPage({super.key});

  @override
  State<CreditcardPage> createState() => _CreditcardState();
}

class _CreditcardState extends State<CreditcardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/pealogo.png', width: 100),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main',
                        arguments: {'index': 2, 'usePages': true});
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'เติมเงินด้วยบัตรเครดิต/เดบิต',
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
            Card(
                color: Colors.white,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "กรุณากรอกข้อมูลบัตร",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/visa.png', width: 70),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/mastercard.png',
                              width: 70),
                          const SizedBox(width: 10),
                          Image.asset('assets/images/unionpay.png', width: 70),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 5, 12, 0),
                        child: Formss(),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/main',
                                arguments: {'index': 2, 'usePages': true});
                          },
                          child: const Text(
                            "ชำระเงิน",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 120, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )),
          ],
        )));
  }
}
