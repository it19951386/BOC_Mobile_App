import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText, required this.nextScreen,
  }) : super(key: key);

  final String buttonText;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:350,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(14),
          boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))],
          gradient: LinearGradient(
          colors: [Color.fromARGB(255,253,197,12),Color.fromARGB(255,255, 231, 107)],
      ),
      ),
      child: FlatButton(
        onPressed:() {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => this.nextScreen),
          );

        } ,
        child: Text(
          buttonText,
          style: SButtonText
        ),
      ),
    );
  }
}

