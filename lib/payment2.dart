import 'package:flutter/material.dart';


class Payment2 extends StatefulWidget {
  @override
  _Payment2state createState() => _Payment2state();
}

class _Payment2state extends State<Payment2> {
  var _selectedIndex = 0;
  var price = [100, 200, 300, 1000, 2000, 3000];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/pealogo.png', width: 100),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_left_rounded,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'เติมเงินด้วยบัตรเครดิต/เดบิต',
                    style: TextStyle(color: Colors.purple),
                  ),
                ],
              ),
              Container(
                color: Colors.white70,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/visa.png', width: 50),
                        SizedBox(width: 10),
                        Image.asset('assets/images/mastercard.png', width: 50),
                        SizedBox(width: 10),
                        Image.asset('assets/images/unionpay.png', width: 50),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("กรุณาเลือกจำนวนเงินที่ต้องการ (บาท)"),
                    SizedBox(height: 20),
                    /*
                   Container(
                      height: 200, // ลดความสูงรวมของ GridView
                      child: GridView.count(
                        crossAxisCount: 3, // เพิ่มจำนวนปุ่มในแถว
                        mainAxisSpacing: 4, // ลดระยะห่างระหว่างแถว
                        crossAxisSpacing: 4, // ลดระยะห่างระหว่างปุ่ม
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(6, (index) {
                          return SizedBox(
                            width: 50, // กำหนดความกว้างปุ่มเล็กลง
                            height: 30, // กำหนดความสูงปุ่มเล็กลง
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == index
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.zero, // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[index]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),
                          );
                        }),
                      ),
                    )
                    */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 0;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 0
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.symmetric(horizontal:33,vertical: 10), // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[0]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),SizedBox(width: 5,),
                             ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 1
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.symmetric(horizontal:33,vertical: 10), // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[1]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),SizedBox(width: 5,),
                             ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 2;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 2
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.symmetric(horizontal:33,vertical: 10), // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[2]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                       ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 3;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 3
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 3
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                               padding: EdgeInsets.symmetric(horizontal:30,vertical: 10), 
                                // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[3]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),SizedBox(width: 5,),
                             ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 4;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 4
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 4
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.symmetric(horizontal:30,vertical: 10), // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[4]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),SizedBox(width: 5,),
                             ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 5;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _selectedIndex == 5
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 252, 236, 255),
                                foregroundColor: _selectedIndex == 5
                                    ? Colors.white
                                    : Colors.black,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4), // ความมนเล็กลง
                                ),
                                padding: EdgeInsets.symmetric(horizontal:30,vertical: 10), // ลบ padding ให้เหลือเล็กที่สุด
                              ),
                              child: Text(
                                '${price[5]}',
                                style: TextStyle(fontSize: 10), // ลดฟอนต์ให้เล็กลง
                              ),
                            ),
                            SizedBox(height: 20,),
                            
                      ],
                    ),
                    Padding(
                      padding:EdgeInsets.fromLTRB(18, 50, 18, 50),
                      child:
                        Text("หมายเหตุ: ค่าธรรมเนียมการใช้บัตรเครดิต หรือ บัตรเดบิต ให้เป็นไปตามเงื่อนไขที่ธนาคารกำหนด",style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    ElevatedButton(
                      onPressed: (){Navigator.pushNamed(context, '/qrcode',arguments: price[_selectedIndex]);}, 
                      child: Text('เติมเงิน',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 37, 200, 1),padding: EdgeInsets.symmetric(horizontal: 110,vertical: 18),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      
                    )
               

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}