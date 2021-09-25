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
      ],
    );
  }
}
