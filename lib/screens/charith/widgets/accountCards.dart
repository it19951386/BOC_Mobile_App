import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';
import 'package:boc_mobile_app/screens/charith/accountDetails.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            print("card tapped");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountDetails()),
            );
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '1568745787  |  Malabe',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.ACCOUNT_TITLE,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Account No  :  456786478',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.ACC_NO,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Account Balance : LKR 54,250.68',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.BALANCE,
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5.0,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0.0),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            print("card tapped");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountDetails()),
            );
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '1968745742  |  Galle',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.ACCOUNT_TITLE,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Account No  :  416763475',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.ACC_NO,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Account Balance : LKR 26,750.45',
                    textAlign: TextAlign.center,
                    style: ApptextStyle.BALANCE,
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5.0,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0.0),
          ),
        ),
      ],
    );
  }
}
