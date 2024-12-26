import 'package:flutter/material.dart';
import '../widget/Creditcard.dart';
import '../widget/button_switch.dart';

class PaymentcPage extends StatefulWidget{
 @override
  State<PaymentcPage> createState() => _PaymentCState();
}
class _PaymentCState extends State<PaymentcPage>{
  @override
  Widget build(BuildContext context){
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
  }
}