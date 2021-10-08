import 'package:boc_mobile_app/screens/pasindu/LoanList.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboardTile.dart';
import 'package:boc_mobile_app/screens/pasindu/example.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boc_mobile_app/screens/pasindu/CustomAppBar.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboardCard.dart';
import 'package:boc_mobile_app/screens/charith/Saving_Accounts.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Dashboard",
        showBackButton: false,
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
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        dashboardCard(
                          title: "My Assets",
                          amount: "LKR 26,750.45",
                          color: Colors.red,
                          nextScreen: SavingAccounts(),
                        ),
                        SizedBox(height: 30),
                        dashboardCard(
                          title: "My Liabilities",
                          amount: "LKR 8,434.00",
                          color: Colors.green,
                          nextScreen: LoanList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Expanded(
                        child: Row(children: [
                          dashboardTile(
                            icon: Icon(FontAwesomeIcons.userFriends),
                            title: "Accounts",
                          ),
                          dashboardTile(
                              icon: Icon(FontAwesomeIcons.cashRegister),
                              title: "Pay Bills")
                        ]),
                      ),
                      SizedBox(height: 30),
                      Expanded(
                        child: Row(
                          children: [
                            dashboardTile(
                                icon: Icon(Icons.attach_money),
                                title: "Third Party Transfer"),
                            dashboardTile(
                                icon: Icon(FontAwesomeIcons.moneyBill),
                                title: "Own Account Transfer")
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(height: 30),
                ],
              )),
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
      appBar: CustomAppBar(appBarTitle: "Reminders", showBackButton: false),
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
      appBar: CustomAppBar(
        appBarTitle: "More",
        showBackButton: false,
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
