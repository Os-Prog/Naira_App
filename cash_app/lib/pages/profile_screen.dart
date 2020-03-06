import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            child: Icon(FontAwesomeIcons.times),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(100.0)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: CircleAvatar(
                    radius: 47.0,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
//                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                    child: Text('John Doe', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('Ilorin, Kwara state NG', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 25.0),
                    child: Container(
                      child: Text('₦ 100,000', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),),
                    )
                  ),
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 59),
//            width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: Container(
//                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: (){},
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                          ),
                          child: Container(
                              margin: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text('Add Cash', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
