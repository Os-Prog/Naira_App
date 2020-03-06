import 'package:flutter/material.dart';

class MyCashPage extends StatefulWidget {
  @override
  _MyCashPageState createState() => _MyCashPageState();
}

class _MyCashPageState extends State<MyCashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Balance Home', style: TextStyle(color: Colors.white, fontSize: 27.0, fontWeight: FontWeight.w900),))
          ],
        ),
      ),
    );
  }
}
