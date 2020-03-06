import 'package:cash_app/pages/paynow.dart';
import 'package:cash_app/pages/request_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profile_screen.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  var addnumber = 0, currentbal;
  @override
  Widget build(BuildContext context) {
    addnumber = addnumber;
    currentbal = addnumber;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 29),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen())),
                              child: Container(
                                child: Icon(
                                  FontAwesomeIcons.userCircle,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                FontAwesomeIcons.expand,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '₦ $currentbal',
                        style: TextStyle(
                            fontSize: 52,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 42.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '1');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '2');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '3');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '4');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '5');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '6');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '6',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '7');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '8');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '8',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '9');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13),
                                  child: Text(
                                    '.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
//                          width: 20.0,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addnumber =
                                          (addnumber.toString().length > 6)
                                              ? addnumber
                                              : int.parse('$currentbal' + '0');
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    if (addnumber.toString().length < 2) {
                                      setState(() {
                                        addnumber = 0;
                                      });
                                    } else {
                                      var currentbal = addnumber.toString(),
                                          newbal;
                                      newbal = 0;
                                      var length = addnumber.toString().length;
                                      for (int i = 0; i < length - 1; i++) {
                                        newbal = '$newbal' +
                                            currentbal[i].toString();
                                      }
                                      setState(() {
                                        addnumber = (newbal.toString().isEmpty)
                                            ? 0
                                            : int.parse(newbal);
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    child: Icon(FontAwesomeIcons.angleLeft),
//                          width: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            elevation: 2,
                            color: Colors.blue,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(19.0),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.blue)),
                            onPressed: () {
                              (addnumber == 0)
                                  ? ''
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RequestNow(addnumber)));
                            },
                            child: Text(
                              'Request',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Container(
                          child: RaisedButton(
                            elevation: 2,
                            color: Colors.blue,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(19.0),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.blue)),
                            onPressed: () {
                              (addnumber == 0)
                                  ? ''
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PayNow(addnumber)));
                            },
                            child: Container(
                              height: 26,
                              child: Center(
                                  child: Text(
                                'Pay',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
