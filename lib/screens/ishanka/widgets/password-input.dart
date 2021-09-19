import 'package:flutter/material.dart';
import '../palatte.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 3.0,
              color: Colors.amberAccent
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                size: 19,
                color: Colors.grey,
              ),
            ),
            hintStyle: TBodyText
        ),
        obscureText: true,
        textInputAction: inputAction,
      ),
    );
  }
}


