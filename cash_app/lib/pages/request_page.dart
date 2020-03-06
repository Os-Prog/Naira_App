import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RequestNow extends StatefulWidget {
  final requestnow;
  RequestNow(this.requestnow);
  @override
  _RequestNowState createState() => _RequestNowState(this.requestnow);
}

class _RequestNowState extends State<RequestNow> {
  final requestamunt;
  _RequestNowState(this.requestamunt);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(FontAwesomeIcons.times),
        ),
        title: Text('NGN'+requestamunt.toString()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
