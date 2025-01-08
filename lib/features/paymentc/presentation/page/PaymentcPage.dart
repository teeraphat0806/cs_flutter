import 'package:cs_flutter/features/paymentc/presentation/widget/drop_down.dart';
import 'package:flutter/material.dart';
import '../widget/Creditcard.dart';
import '../widget/button_switch.dart';

class PaymentcPage extends StatefulWidget {
  @override
  State<PaymentcPage> createState() => _PaymentCState();
}

class _PaymentCState extends State<PaymentcPage> {
  var switch_var = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 126, 31, 143),
                      const Color.fromARGB(255, 214, 54, 242)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Card(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.wallet_giftcard,size: 50,),
                                    Text(
                                      'V2371589460',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                Text('ยอดคงเหลือ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text('เงินโบนัส',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                                Row(
                                  children: [
                                    Text(
                                      'การชำระโดยเงินโบนัส',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.help_outline,
                                      color: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                SizedBox(height: 55,),
                                Text(
                                  'B0',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                ),
                                Text(
                                  'B0',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                                ),
                                Switch(
                                  // thumb color (round icon)
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.purple,
                                  inactiveThumbColor: Colors.blueGrey.shade600,
                                  inactiveTrackColor: Colors.grey.shade400,
                                  splashRadius: 50.0,
                                  // boolean variable value
                                  value: switch_var,
                                  // changes the state of the switch
                                  onChanged: (value) =>
                                      setState(() => switch_var = value),
                                ),
                              ],
                            )
                          ],
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // No border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('เติมเงินเข้า VOLTA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(
                        'เลือกช่องทางการเติมเงิน',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 40, // Diameter of the circle
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                      124, 218, 218, 218), // Background color
                                  shape: BoxShape.circle, // Makes it circular
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                    icon: Icon(Icons.qr_code),
                                  color: Colors.purple,
                                  onPressed: (){  Navigator.pushNamed(context, '/main',arguments: {'index':1,'usePages':false});},
                                ),
                              ),
                              Text('พร้อมเพย์')
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                                  Container(
                                    width: 40, // Diameter of the circle
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(124, 218, 218,
                                          218), // Background color
                                      shape:
                                          BoxShape.circle, // Makes it circular
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 8,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.credit_card),
                                       color: Colors.purple,
                                      onPressed: (){ Navigator.pushNamed(context, '/main',arguments: {'index':0,'usePages':false});}
                                     
                                    ),
                                  ),
                                  Text('บัตรเครดิต/เดบิต')
                                
                              
                            ],
                          ),
                          Column(
                            children: [SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 40, // Diameter of the circle
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                      124, 218, 218, 218), // Background color
                                  shape: BoxShape.circle, // Makes it circular
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 8,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon:Icon(Icons.token),
                                  color: Colors.purple,
                                ),
                              ),
                              Text('กรอกโค้ด')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // No border radius
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'รายการย้อนหลัง',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Dropdown_payment(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
 return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),),
        body:SingleChildScrollView(
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Creditcard(),
                      SizedBox(height: 5,),
                      ButtonSwitch(),
                      SizedBox(height: 5,),
                      ElevatedButton(onPressed: (){}, 
                        child: 
                          Text('ประวัติการใช้งาน',style: TextStyle(color: Colors.white,fontSize: 13),),
                        style: 
                          ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 6, 217, 48), 
                            padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 10),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                        ),),),
                      SizedBox(height: 10,),
                     
                    ],
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,0,0),
                  child: Text("เลือกประเภทการเติมเงิน",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/main',arguments: {'index':0,'usePages':false});
                        },
                        child: 
                          Container(
                            padding: EdgeInsets.all(15),
                            color: Colors.white,
                            child: 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('บัตรเครดิต/เดบิต',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/visa.png', width: 50),
                                      const SizedBox(width: 10),
                                      Image.asset('assets/images/mastercard.png', width: 50),
                                      const SizedBox(width: 10),
                                      Image.asset('assets/images/unionpay.png', width: 50),
                                    ],
                                  ),
                                ],
                              ),
                          ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/main',arguments: {'index':1,'usePages':false});
                        },
                        child: 
                          Container(
                            padding: EdgeInsets.all(15),
                            color: Colors.white,
                            child: 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('THAI QR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  Image.asset('assets/images/prompay.png', width: 80),
                                ],
                              ),
                          ),
                      )
                    ],
                  ),
                )
              ],
          ),
        ),
      );
 */
