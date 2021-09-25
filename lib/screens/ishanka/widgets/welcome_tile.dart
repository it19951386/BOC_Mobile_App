import 'package:flutter/material.dart';

class WelcomeTile extends StatelessWidget {
  const WelcomeTile(
      {Key? key, required this.title, required this.icon, required this.nextScreen,
      })
      : super(key: key);

  final String title;
  final Icon icon;
  final Widget nextScreen;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print("card tapped");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => this.nextScreen),
          );
        },
        child: Container(
          margin: EdgeInsets.only(top: 12),
          height: 64,
          width: 66,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255,253,197,12),Color.fromARGB(255,255, 231, 107)],
            ),
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
            children: [
              this.icon,
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(this.title,

                ),
              )
            ],
          ),
        )
    );
  }
}