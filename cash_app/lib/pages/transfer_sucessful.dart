import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Register/FirstPage.dart';

class TransferOkay extends StatefulWidget {
  @override
  _TransferOkayState createState() => _TransferOkayState();
}

class _TransferOkayState extends State<TransferOkay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage())),
            child: Icon(FontAwesomeIcons.times)),
//        elevation: 0,
        title: Text('Transfer successful'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Icon(FontAwesomeIcons.checkCircle, size: 88,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text('Payment made succesfully', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
              )
            ],
          )
        ],
      ),
    );
  }
}
