import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

              //Title_1
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

              //Title_2
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

              //RoundedButton
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Sign In',
                  nextScreen: Login(),
                ),
              ),

              //clickable text
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                child: ClickableText(),
              ),

              //add tiles
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WelcomeTile(
                    title: "Find Us",
                    icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                    nextScreen: WelcomeScreen(),
                  ),
                  WelcomeTile(
                    title: "FAQ's",
                    icon: Icon(FontAwesomeIcons.questionCircle),
                    nextScreen: WelcomeScreen(),
                  ),
                  WelcomeTile(
                    title: "Offers",
                    icon: Icon(FontAwesomeIcons.gift),
                    nextScreen: WelcomeScreen(),
                  ),

                ],
              )

            ],
          ),
        ),
      ],
    );
  }
}
