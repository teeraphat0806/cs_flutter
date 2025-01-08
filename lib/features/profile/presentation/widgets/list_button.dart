import 'package:flutter/material.dart';

class ListButton extends StatefulWidget {
  const ListButton({super.key});

  @override
  State<ListButton> createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Card(
          color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the first button
              Navigator.pushNamed(context, '/main',arguments: {'index':3,'usePages':false});
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(Icons.account_box),
                  SizedBox(width: 10),
                  Text('เปลี่ยนแปลงข้อมูล'),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
        
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the second button
              print('การจัดการบัตรและการชาร์จอัตโนมัติ tapped');
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: const [
                  Icon(Icons.credit_card),
                  SizedBox(width: 10),
                  Text('การจัดการบัตรและการชาร์จอัตโนมัติ'),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the second button
              print('การจัดการบัตรและการชาร์จอัตโนมัติ tapped');
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: const [
                  Icon(Icons.menu_book_outlined),
                  SizedBox(width: 10),
                  Text('วิธีการใช้งาน'),
                  SizedBox(
                    width: 214,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the second button
              Navigator.pushNamed(context, '/about');
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: const [
                  Icon(Icons.info),
                  SizedBox(width: 10),
                  Text('เกี่ยวกับ'),
                  SizedBox(
                    width: 243,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the second button
              print('การจัดการบัตรและการชาร์จอัตโนมัติ tapped');
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children:  [
                  Icon(Icons.translate),
                  SizedBox(width: 10),
                  Text('เปลี่ยนภาษา'),
                  SizedBox(
                    width: 200,
                  ),
                  Text('TH',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                 Image.asset('assets/images/thailand.png',width: 20,)
                ],
              ),
            ),
          ),
        ),   Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          child: GestureDetector(
            onTap: () {
              // Action for the second button
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: const [
                  Icon(Icons.exit_to_app),
                  SizedBox(width: 10),
                  Text('ออกจากระบบ'),
                 
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}



/*
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

 */