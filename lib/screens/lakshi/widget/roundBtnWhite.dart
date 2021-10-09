import 'package:flutter/material.dart';

class RoundedButtonWhite extends StatelessWidget {
  const RoundedButtonWhite(
      {Key? key, required this.buttonText, required this.nextScreen})
      : super(key: key);

  final String buttonText;
  final Widget nextScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
        ],
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 253, 197, 12),
            Color.fromARGB(255, 255, 231, 107)
          ],
        ),
      ),
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => this.nextScreen),
            );
          },
          child: Text(buttonText,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins')),
        ),
      ),

      
   

    );
  }
}
