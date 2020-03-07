
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'confirm_payment.dart';

class PayNow extends StatefulWidget {
  final paynowamount;
  PayNow(this.paynowamount);
  @override
  _PayNowState createState() => _PayNowState(this.paynowamount);
}

class _PayNowState extends State<PayNow> {
  Color _activeButtonColor = Colors.blue;
  Color _inactiveButtonColor = Colors.black26;
  bool _isbuttonActive = false;
  TextStyle _formTextStyle = TextStyle(fontSize: 20, letterSpacing: 1.5);

  TextStyle _labelTextStyle = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      letterSpacing: 1.0);
  final payamount;
  String sendtoemail;
  String sendnote;
  var isfieldperfect = true;
  _PayNowState(this.payamount);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(FontAwesomeIcons.times),
        ),
        title: Text('₦' + payamount.toString()),
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
                        builder: (context) => ConfirmPaymentScreen()));
                },
                color:
                _isbuttonActive ? _activeButtonColor : _inactiveButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  child: Text(
                    'Pay',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/transfer.png'),
                      fit: BoxFit.fill),
                ),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.6, color: Colors.black45))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'To:',
                              style: _labelTextStyle,
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Container(
                                child: TextFormField(
                                  style: _formTextStyle,
                                  onChanged: (value) {
                                    setState(() {
                                      sendtoemail = value;
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'account number, userId',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.6, color: Colors.black45))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Note:',
                              style: _labelTextStyle,
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Container(
                                child: TextFormField(
                                  style: _formTextStyle,
                                  onChanged: (value) {
                                    sendnote = value;
                                    if (value.length > 4) {
                                      setState(() {
                                        _isbuttonActive = true;
                                      });
                                    } else {
                                      setState(() {
                                        _isbuttonActive = false;
                                      });
                                    }
                                  },
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText:
                                    'Add a short note description of transaction',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }

  Future<void> isLoadingInd() async {
    return await showDialog<Null>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.deepOrange,
                  strokeWidth: 1.3,
                ),
              )
            ],
          );
        });
  }
}
