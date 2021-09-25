import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(
          context,
          'SendRegister'
      ),
      child: RichText(
        text: TextSpan(
          text: 'New to online Banking? ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Colors.black54,
            fontSize: 14,
          ),
          children: [
            TextSpan(
                text: 'Register',
                style: TextStyle(
                  color: Colors.orange,
                  decoration: TextDecoration.underline,
                ),


            ),
          ],
        ),
      ),
    );
  }
}