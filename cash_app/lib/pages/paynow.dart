import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PayNow extends StatefulWidget {
  final paynowamount;
  PayNow(this.paynowamount);
  @override
  _PayNowState createState() => _PayNowState(this.paynowamount);
}

class _PayNowState extends State<PayNow> {
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
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(FontAwesomeIcons.times),
        ),
        title: Text('NGN'+payamount.toString()),
        centerTitle: true,
        actions: <Widget>[
          Container(
            height: 20,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.only(right: 15, left: 10),
            child: (isfieldperfect) ? RaisedButton(
              onPressed: (){

              },
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                child: Text('Pay', style: TextStyle(color: Colors.white),),
              ),
            ) : RaisedButton(
              disabledColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.white12)
              ),
              child: Container(
                  child: Text('Pay', style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 0.6, color: Colors.black45))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('To:', style: TextStyle(fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        child: Expanded(
                          child: Container(
                            child: TextFormField(
                              onChanged: (value){
                                setState(() {
                                  sendtoemail = value;
//                                  isfieldperfect = ((sendtoemail.toString().isEmpty || sendtoemail == null) || (sendnote.toString().isEmpty || sendnote == null)) ? false : true;
//                                  print(sendtoemail);
//                                  print(sendnote);
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Email, Phone number or Name',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 0.6, color: Colors.black45))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Note:', style: TextStyle(fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        child: Expanded(
                          child: Container(
                            child: TextFormField(
                              onChanged: (value){
                                sendnote = value;
//                                isfieldperfect = ((sendtoemail.toString().isEmpty || sendtoemail.toString() == null) || (sendnote.toString().isEmpty || sendnote.toString() == null)) ? false : true;
//                                print(sendtoemail.toString());
//                                print(sendnote.toString());
                              },
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Add a short note description of transaction',
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
        ),
      ),
    );
  }
  Future<void> isLoadingInd() async{
    return await showDialog<Null>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(backgroundColor: Colors.deepOrange, strokeWidth: 1.3,),
              )
            ],
          );
        });
  }
}
