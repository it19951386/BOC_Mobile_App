import 'package:boc_mobile_app/screens/pasindu/LoanList.dart';
import 'package:flutter/material.dart';

class dashboardCard extends StatelessWidget {
  dashboardCard(
      {Key? key,
      required this.title,
      required this.amount,
      required this.color,
      required this.nextScreen})
      : super(key: key);

  final String title, amount;
  final Color color;
  final Widget nextScreen;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
          onTap: () {
            print("card tapped");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nextScreen),
            );
          },
          child: Container(
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Text(
                      this.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
          )),
    );
  }
}
