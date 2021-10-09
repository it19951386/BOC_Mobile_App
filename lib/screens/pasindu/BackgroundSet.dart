import 'package:boc_mobile_app/screens/charith/reminder.dart';
import 'package:boc_mobile_app/screens/pasindu/LoanCard.dart';
import 'package:boc_mobile_app/screens/pasindu/LoanDetails.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboardCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//
class BackgroundSet extends StatefulWidget {
  BackgroundSet({Key? key}) : super(key: key);

  @override
  _BackgroundSetState createState() => _BackgroundSetState();
}

class _BackgroundSetState extends State<BackgroundSet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.amber.shade300,
                      Colors.amber.shade200
                    ],
                    stops: [0.2, 0.8],
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ]),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        child: LoanCard(
                          title: '085227453 MALABE',
                          accnumber: 'Account No:- 085227453',
                          balance: 'Loan Outstanding :- LKR 24,548.00',
                          nextScreen: LoanDetails(
                            loanBalanceCard:
                                LoanBalanceCard(balance: "LKR 23,000.00"),
                            body: Body(
                                account: "085227453",
                                cID: "0221547835",
                                pName: "ABC Personal Loan"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        child: LoanCard(
                          title: '087144256 MALABE',
                          accnumber: 'Account No:- 087144256',
                          balance: 'Loan Outstanding :- LKR 100,000.00',
                          nextScreen: LoanDetails(
                            loanBalanceCard:
                                LoanBalanceCard(balance: "LKR 100,000.00"),
                            body: Body(
                                account: "087144256",
                                cID: "0441547430",
                                pName: "XYZ Student Loan"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
