import 'package:flutter/material.dart';
//import '../palatte.dart';

class BeneficiaryName extends StatelessWidget {
  const BeneficiaryName({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

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
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 14),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black26
            )
        ),
        keyboardType: inputType,
        textInputAction: inputAction,
      ),
    );
  }
}

