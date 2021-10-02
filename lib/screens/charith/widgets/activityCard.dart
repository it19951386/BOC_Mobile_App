import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key, required this.date, required this.activity})
      : super(key: key);

  final String date;
  final String activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                this.date,
                style: ApptextStyle.CARD_DATE,
              ),
              SizedBox(height: 10),
              Text(
                this.activity,
                style: ApptextStyle.ACTIVITY,
              ),
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
