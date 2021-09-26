import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';

import 'LoanCard.dart';

class LoanDetails extends StatefulWidget {
  const LoanDetails({Key? key}) : super(key: key);

  @override
  _LoanDetailsState createState() => _LoanDetailsState();
}

class _LoanDetailsState extends State<LoanDetails> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Loan Details', showBackButton: true),
      body: Stack(
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 197, 12),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: null,
                        ),
                        child: ToggleButtons(
                          constraints: BoxConstraints.expand(
                            width: queryData.size.width * 0.45,
                            height: 50,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          fillColor: Color.fromARGB(255, 210, 162, 3),
                          selectedColor: Colors.white,
                          borderWidth: 1,
                          children: <Widget>[
                            Text('Details',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Activity',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                          onPressed: (int index) {
                            setState(() {
                              for (int buttonIndex = 0;
                                  buttonIndex < isSelected.length;
                                  buttonIndex++) {
                                if (buttonIndex == index) {
                                  isSelected[buttonIndex] = true;
                                } else {
                                  isSelected[buttonIndex] = false;
                                }
                              }
                            });
                          },
                          isSelected: isSelected,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
