import 'package:flutter/material.dart';

class ProfileDesc extends StatefulWidget {
  @override
  _ProfileDescState createState() => _ProfileDescState();
}

class _ProfileDescState extends State<ProfileDesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
//                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
