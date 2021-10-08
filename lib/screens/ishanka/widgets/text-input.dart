import 'package:flutter/material.dart';
import '../palatte.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
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
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 14),
            border: InputBorder.none,
            hintText: hint,
            enabled: false,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                size: 19,
                color: Colors.grey,
              ),
            ),
            hintStyle: TBodyText2
        ),
        keyboardType: inputType,
        textInputAction: inputAction,
      ),
    );
  }
}

