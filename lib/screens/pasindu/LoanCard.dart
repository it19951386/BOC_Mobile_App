import 'package:boc_mobile_app/screens/pasindu/LoanDetails.dart';
import 'package:flutter/material.dart';

class LoanCard extends StatelessWidget {
  const LoanCard(
      {Key? key,
      required this.title,
      required this.accnumber,
      required this.balance,
      required this.nextScreen})
      : super(key: key);

  final String title;
  final String accnumber;
  final String balance;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoanDetails()),
        );
      },
      child: Container(
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
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  accnumber,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                child: Text(
                  balance,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
