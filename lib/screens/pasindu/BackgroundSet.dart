import 'package:flutter/material.dart';

class BackgroundSet extends StatelessWidget {
  const BackgroundSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/Loans.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 100),
        Column(
          children: [Text("1"), Text("2")],
        ),
      ],
    );
  }
}
