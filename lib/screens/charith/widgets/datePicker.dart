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
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 3.0, color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
          ]),
      child: TextField(
        controller: dateinput, //editing controller of this TextField
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: InputBorder.none,
          hintText: hint,
          labelText: label,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              icon,
              size: 18,
              color: Colors.grey,
            ),
          ),
          hintStyle: ApptextStyle.HINT_TEXT,
          labelStyle: ApptextStyle.TEXT_LABEL,
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(
                  2000), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101));

          if (pickedDate != null) {
            print(
                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(
                formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              dateinput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
