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
    MediaQueryData queryData = MediaQuery.of(context);

    return Container(
      height: 130,
      width: queryData.size.width * 0.9,
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
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(title),
            ),
            Container(
              child: Text(accnumber),
            ),
            Container(
              child: Text(balance),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
