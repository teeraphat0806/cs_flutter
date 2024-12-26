import 'package:flutter/material.dart';

class ButtonSwitch extends StatefulWidget{
  @override
  State<ButtonSwitch> createState() => _ButtonswitchState();
}
class _ButtonswitchState extends State<ButtonSwitch>{
  var switchvalue =false;
  @override
  Widget build(BuildContext context){
    return
      Container(
        child: 
          Row(
              children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            Icon(Icons.settings_applications,color: Colors.grey,),
                            SizedBox(width: 8,),
                            Text('การชำระเงินโดยเงินโบนัส',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 8,),
                            Icon(Icons.help_outline_outlined,color: Colors.grey,size: 30,),
                            SizedBox(width: 45,),
                            Switch(
                              activeColor: Colors.white,
                              activeTrackColor: Colors.greenAccent,
                              inactiveThumbColor: Colors.white24,
                              inactiveTrackColor: Colors.grey.shade400,
                              splashRadius: 50.0,
                              // boolean variable value
                              value: switchvalue,
                              // changes the state of the switch
                              onChanged: (value) => setState(() => switchvalue = value),
                            ),
                        ],
                      ),
                    ),
                )
              ],
          ),
        
      );
  }
}