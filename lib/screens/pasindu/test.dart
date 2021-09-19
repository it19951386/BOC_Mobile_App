import 'package:boc_mobile_app/screens/pasindu/LoanList.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboardTile.dart';
import 'package:boc_mobile_app/screens/pasindu/example.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboardCard.dart';

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        appBarTitle: "Dashboard",
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Center(
                  child: Column(
                children: [
                  Column(
                    children: [
                      dashboardCard(
                        title: "My Assets",
                        amount: "LKR 10,435.00",
                        color: Colors.red,
                        nextScreen: example(),
                      ),
                      dashboardCard(
                        title: "My Liabilities",
                        amount: "LKR 8,434.00",
                        color: Colors.green,
                        nextScreen: LoanList(),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        dashboardTile(
                          icon: Icon(FontAwesomeIcons.userFriends),
                          title: "Accounts",
                        ),
                        dashboardTile(
                            icon: Icon(FontAwesomeIcons.cashRegister),
                            title: "Pay Bills")
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      dashboardTile(
                          icon: Icon(Icons.attach_money),
                          title: "Third Party Transfer"),
                      dashboardTile(
                          icon: Icon(FontAwesomeIcons.moneyBill),
                          title: "Own Account Transfer")
                    ],
                  ),
                ],
              ))),
        ],
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        appBarTitle: "Reminders",
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Center(child: Text("Reminders"))),
        ],
      ),
    );
  }
}

class Test3 extends StatelessWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        appBarTitle: "More",
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Center(child: Text("More"))),
        ],
      ),
    );
  }
}
