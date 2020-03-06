import 'package:cash_app/pages/Register/register_page3.dart';
import 'package:flutter/material.dart';

class RegisterApp2 extends StatefulWidget {
  @override
  _RegisterApp2State createState() => _RegisterApp2State();
}

class _RegisterApp2State extends State<RegisterApp2> {
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
                          child: Text('Step 2', style: TextStyle(color: Colors.white, fontSize: 23),),
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
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: 'Enter your email',
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
                            obscureText: true,
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
                              labelText: 'Enter a password',
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
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterApp3())),
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
