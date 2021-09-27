import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
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
                  padding:EdgeInsets.fromLTRB(10.0,0.0, 260.0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style:SignInText,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:EdgeInsets.fromLTRB(10.0,0.0, 162.0, 0),
                  child: Column(
                    children: [
                      Text(
                          'Register to Online banking.',
                          style:NText
                      ),

                    ],
                  ),

                ),
                Padding(
                  padding:EdgeInsets.fromLTRB(20, 25, 20, 150),
                  child: Column(
                    children: [
                      TextInput(
                        icon: FontAwesomeIcons.user,
                        hint: 'Full Name',
                        inputType: TextInputType.text,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.mailBulk,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.phoneAlt,
                        hint: 'Phone Number',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.book,
                        hint: 'Account Number',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      PasswordInput(
                        icon: FontAwesomeIcons.userLock,
                        hint: 'Create Password',
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      PasswordInput(
                        icon: FontAwesomeIcons.userLock,
                        hint: 'Confirm Password',
                        inputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      RoundedButton(
                        buttonText: 'Sign Up',
                        nextScreen: Login(),
                      ),

                    ],
                  ),

                ),
              ],
            ),
          ),

        ),
      ],
    );
  }
}
