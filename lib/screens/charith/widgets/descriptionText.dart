import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.icon,
    required this.hint,
    required this.label,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final String label;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
