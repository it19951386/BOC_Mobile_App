import 'package:boc_mobile_app/screens/ishanka/palatte.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

void main() => runApp(MaterialApp(
  home: Login(),
  debugShowCheckedModeBanner: false,
));

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                height: 250,
                child: Center(
                  child: Image(
                      image:AssetImage('assets/logo.png')
                  ),
                ),
              ),

              Padding(
                padding:EdgeInsets.fromLTRB(10.0,0.0, 275.0, 0),
                child: Column(
                  children: [
                    Text(
                      'Sign In',
                      style:SignInText,
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(10.0,0.0, 170.0, 0),
                child: Column(
                  children: [
                    Text(
                      'Please sign in to continue.',
                      style:NText
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


