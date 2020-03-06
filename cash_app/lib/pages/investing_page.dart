import 'package:cash_app/pages/profile_screen.dart';
import 'package:flutter/material.dart';

class InvestingPage extends StatefulWidget {
  @override
  _InvestingPageState createState() => _InvestingPageState();
}

class _InvestingPageState extends State<InvestingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
//              child: RaisedButton(
//                onPressed: () => Navigator.of(context).push(
//                    MaterialPageRoute(
//                        builder: (context) => ProfileScreen())),
//                child: Text('goto profile'),
//              ),
            ),
          ],
        ),
      ),
    );
  }
}
