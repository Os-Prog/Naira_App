import 'package:cash_app/pages/cash_card.dart';
import 'package:cash_app/pages/investing_page.dart';
import 'package:cash_app/pages/mycash_page.dart';
import 'package:cash_app/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:cash_app/pages/activity_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  MyCashPage mycash;
  CashCard cashcard;
  WalletPage walletpage;
  InvestingPage investingpage;
  ActivityPage activitypage;
  List allpages;
  int currentIndexTab = 2;
  Widget currenttab;

  void initState() {
    super.initState();
    mycash = MyCashPage();
    cashcard = CashCard();
    walletpage = WalletPage();
    investingpage = InvestingPage();
    activitypage = ActivityPage();

    allpages = [mycash, cashcard, walletpage, investingpage, activitypage];
    currenttab = walletpage;
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.blue,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          unselectedIconTheme: IconThemeData(color: Colors.white70),
          selectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              currentIndexTab = index;
              currenttab = allpages[index];
            });
          },
          iconSize: 21,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          currentIndex: currentIndexTab,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 17,
              ),
              title: Text(
                'home',
                style: TextStyle(fontSize: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.mobileAlt,
                size: 18,
              ),
              title: Text(
                'contacts',
                style: TextStyle(fontSize: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.dollarSign),
              title: Text(
                'wallet',
                style: TextStyle(fontSize: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.sun,
                size: 19,
              ),
              title: Text(
                'settings',
                style: TextStyle(fontSize: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clock),
              title: Text(
                'activity',
                style: TextStyle(fontSize: 0),
              ),
            )
          ],
        ),
        body: currenttab,
      ),
    );
  }
}
