import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Status :',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Account No : ',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Customer Name : ',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Branch  : ',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Account Type : ',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Date Opened : ',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Active 🟢',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gamage H.N',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '416763475',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '1968745 | Galle',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'SmartGen',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '10/04/2018',
                        style: ApptextStyle.CARD_SUB_TITLE,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5.0,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      ),
    );
  }
}
