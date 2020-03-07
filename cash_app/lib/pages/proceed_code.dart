import 'package:cash_app/pages/transfer_sucessful.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProceedLink extends StatefulWidget {
  @override
  _ProceedLinkState createState() => _ProceedLinkState();
}

class _ProceedLinkState extends State<ProceedLink> {
  Color _activeButtonColor = Colors.blue;
  Color _inactiveButtonColor = Colors.black26;
  bool _isbuttonActive = false;
  var transferCode = 345.4;
  var inpvalue;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(FontAwesomeIcons.times),
        ),
        title: Text('Security Question'),
        actions: <Widget>[
          Container(
              height: 20,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(right: 15, left: 10),
              child: RaisedButton(
                elevation: 10,
                onPressed: () {
                  if (_isbuttonActive)
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TransferOkay()));
                },
                color:
                _isbuttonActive ? _activeButtonColor : _inactiveButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 220,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Image.asset(
                    'assets/images/security.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Security Questions',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            margin: EdgeInsets.only(bottom: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              onChanged: (value){
                                setState(() {
                                  inpvalue = value;
                                  if(inpvalue.toString().length > 2){
                                    _isbuttonActive = true;
                                  }else{
                                    _isbuttonActive = false;
                                  }
                                });
                              },
                              obscureText: true,
                              style:
                              TextStyle(color: Colors.white, fontSize: 18),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Enter next security code',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                contentPadding:
                                EdgeInsets.fromLTRB(19, 5, 10, 5),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          if(inpvalue.toString().length > 2)
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferOkay()));
//                          _showDialog();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          margin: EdgeInsets.symmetric(horizontal: 66),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Text(
                              'Confirm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
