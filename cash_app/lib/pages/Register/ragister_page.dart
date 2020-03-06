import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'register_page2.dart';
import 'register_page3.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(child: Text('₦', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),),
                        Container(child: Text('AIRA APP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),))
                      ],
                    ),
                    SizedBox(
                      height: 65.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text('Step 1', style: TextStyle(color: Colors.white, fontSize: 23),),
                          margin: EdgeInsets.only(bottom: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: 'Enter your firstname',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(19, 5, 10, 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: 'Enter your lastname',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(19, 5, 10, 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterApp2())),
                          color: Colors.white,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide.none
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 21),
                              child: Text('Proceed'),
                          ),
                        ),
                      ],
                    ),
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
