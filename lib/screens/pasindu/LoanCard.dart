import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  const LoanCard(
      {Key? key,
      required this.title,
      required this.accnumber,
      required this.balance})
      : super(key: key);

  final String title;
  final String accnumber;
  final String balance;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(left: 23, right: 23),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(accnumber),
          Text(balance),
        ],
      ),
    );
  }
}
