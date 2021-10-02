import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({
    Key? key,
    required this.icon,
    required this.hint,
    required this.label,
  }) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();

  final IconData icon;
  final String hint;
  final String label;
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController dateinput = TextEditingController();

  //getting variable access
  get hint => hint;
  get label => label;
  IconData? get icon => icon;

  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
