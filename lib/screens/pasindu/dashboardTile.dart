import 'package:flutter/material.dart';

class dashboardTile extends StatelessWidget {
  const dashboardTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          print("tapped");
        },
        child: Container(
          margin: EdgeInsets.only(left: 23, right: 23),
          // height: 120,
          // width: 162,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon, Text(title)],
          ),
        ),
      ),
    );
  }
}
