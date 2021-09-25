import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'palatte.dart';

void main() =>runApp(MaterialApp(
  home: WelcomeScreen(),
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    'SendRegister': (context)=> Login(),
  },
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

              Padding(
                padding: EdgeInsets.fromLTRB(15.0,0.0, 20.0, 0),
                child:Column(
                  children: [
                    Text(
                      'WELCOME',
                      style: Welcome,
                    ),
                  ],
                ) ,
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'TO THE ',
                        style: TextStyle(

                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 22,
                        ),
                        children: [
                          TextSpan(
                              text: 'BOC BANK APP !',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold

                              )

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 75, 10, 20),
                child: RoundedButton(
                  buttonText: 'Sign In',
                  nextScreen: Login(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                child: ClickableText(),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
