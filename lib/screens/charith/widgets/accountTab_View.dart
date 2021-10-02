import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class ActivityTab extends StatelessWidget {
  const ActivityTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ActivityCard(
                  date: '09/05/2021',
                  activity: 'TRANSFER CREDIT TO 9578642XXX',
                ),
                ActivityCard(
                  date: '02/05/2021',
                  activity: 'TRANSFER CREDIT TO 8474142XXX',
                ),
                ActivityCard(
                  date: '26/04/2021',
                  activity: 'PAY Utility Bill',
                ),
                ActivityCard(
                  date: '06/04/2021',
                  activity: 'DEPOSIT CREDIT TO 5684714XXX  ',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
