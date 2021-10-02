import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:boc_mobile_app/screens/charith/constants/app_textStyle.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '12/06/2021',
                    textAlign: TextAlign.right,
                    style: ApptextStyle.CARD_DATE,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Transfer Credit',
                  style: ApptextStyle.CARD_TITLE,
                ),
                const SizedBox(height: 10),
                Text(
                  'This is card body',
                  style: ApptextStyle.CARD_SUB_TITLE,
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5.0,
          margin: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '26/05/2021',
                    textAlign: TextAlign.right,
                    style: ApptextStyle.CARD_DATE,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Request Account Status',
                  style: ApptextStyle.CARD_TITLE,
                ),
                const SizedBox(height: 10),
                Text(
                  'This is card body',
                  style: ApptextStyle.CARD_SUB_TITLE,
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5.0,
          margin: EdgeInsets.fromLTRB(30, 20, 30, 0.0),
        ),
      ],
    );
  }
}
