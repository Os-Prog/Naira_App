import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'confirm_payment.dart';
import 'proceed_code.dart';

class ChoosePay extends StatefulWidget {
  @override
  _ChoosePayState createState() => _ChoosePayState();
}

class _ChoosePayState extends State<ChoosePay> {
  // ConfirmPaymentScreen
  @override
  Widget build(BuildContext context) {
    String texttoleave = "You're about to transfer to";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(onTap: ()=> Navigator.of(context).pop(), child: Icon(FontAwesomeIcons.times)),
        title: Text('Choose procedure'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Image.asset('assets/images/choose_acc.png', fit: BoxFit.fill,),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Text("Transfer to:", style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 4),
                  child: Text("0123456789", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Text("Note:", style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 50, top: 4),
                    child: Text("Transfering this cash to your account", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProceedLink())),
                  color: Colors.blue,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Proceed with your code', style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPaymentScreen())),
                  color: Colors.blue,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: Text('Generate a new code', style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
