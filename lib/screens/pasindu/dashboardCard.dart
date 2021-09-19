import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class dashboardCard extends StatelessWidget {
  const dashboardCard(
      {Key? key,
      required this.title,
      required this.amount,
      required this.color})
      : super(key: key);

  final String title, amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 120,
      width: 366,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 12),
          child: Text(this.amount,
              style: TextStyle(
                  color: this.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        )
      ]),
    );
  }
}
