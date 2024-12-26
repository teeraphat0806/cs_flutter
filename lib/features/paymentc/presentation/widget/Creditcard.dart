import 'package:flutter/material.dart';

class Creditcard extends StatefulWidget{
  @override
  State<Creditcard> createState() => _CreditcardState(); 
}
class _CreditcardState extends State<Creditcard>{
  @override
  Widget build(BuildContext context){
    return 
    Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      ),
      child:
      Padding(
        padding: EdgeInsets.all(3),
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: SizedBox(
                width: 180, // กำหนดความกว้าง
                height: 130, // กำหนดความสูง
                child: 
              Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.purple, // สีของเส้นขอบ
                      width: 2, // ความหนาของเส้นขอบ
                    ),
                    borderRadius: BorderRadius.circular(10), // มุมโค้งของ Card
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 8, 0, 2),
                      child: 
                        Column(
                          children: [
                            Text('หมายเลขสมาชิก',style: TextStyle(color: Colors.white),),
                            Text("V7352049188",style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        
                      
                    ),
                    SizedBox(height: 2,),
                    Center(
                      child: SizedBox(
                        width: 180,
                        height: 30,
                        child: Card(
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Center(
                          child: SizedBox(
                            width: 35,
                            height: 20,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 13,
                            height: 20,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 15,
                            height: 20,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 18,
                            height: 20,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                )          
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("ยอดคงเหลือ",style: TextStyle(fontWeight: FontWeight.w600,),),
              Text('B0',style: TextStyle(color: Colors.purple),),
              Text('เงินโบนัส',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w600),),
              Text('B0',style: TextStyle(fontSize: 9,color: Colors.purple))
            ],
          ),
        ],
        )
      )
    );
  }
}