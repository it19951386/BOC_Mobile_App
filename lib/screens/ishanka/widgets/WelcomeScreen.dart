import 'package:flutter/material.dart';
import 'widgets.dart';

void main() =>runApp(MaterialApp(
  home: WelcomeScreen(),
  debugShowCheckedModeBanner: false,
));


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,

          body: Column(
            children: [
             Container(
               child: Center(
                 child: Image(
                     image:AssetImage('assets/logo.png')
                 ),
               ),
               padding: EdgeInsets.fromLTRB(0, 90, 0, 50),
             ),
            ],
          ),
        ),
      ],
    );
  }
}
