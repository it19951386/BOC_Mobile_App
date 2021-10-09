import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddReminderForm extends StatefulWidget {
  final FocusNode subjectFocusNode;
  final FocusNode descriptionFocusNode;
  final FocusNode dateFocusNode;
  final FocusNode timeFocusNode;

  const AddReminderForm(
      {required this.subjectFocusNode,
      required this.descriptionFocusNode,
      required this.dateFocusNode,
      required this.timeFocusNode});

  @override
  _AddReminderFormState createState() => _AddReminderFormState();
}

class _AddReminderFormState extends State<AddReminderForm> {
  final _formKey = GlobalKey<FormState>();

  bool _isProcessing = false;

  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  //get form values
  String getSubject = "";
  String getDescription = "";
  String getDate = "";
  String getTime = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                /************************
                        Title
                 ************************/
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 3.0, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 4))
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: InputBorder.none,
                      hintText: 'Title',
                      filled: true,
                      errorStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          FontAwesomeIcons.fileSignature,
                          size: 19,
                          color: Colors.grey,
                        ),
                      ),
                      hintStyle: ApptextStyle.HINT_TEXT,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    focusNode: widget.subjectFocusNode,
                    controller: _subjectController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '     Please Enter Title';
                      }
                      getSubject = value;
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                /************************
                      Description
                 ************************/
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 3.0, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 4))
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: InputBorder.none,
                      hintText: 'Description',
                      filled: true,
                      errorStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          FontAwesomeIcons.listAlt,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                      hintStyle: ApptextStyle.HINT_TEXT,
                    ),
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.next,
                    controller: _descriptionController,
                    maxLines: 2,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "     Please Enter Description";
                      }
                      getDescription = value;
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                /****************************
                      Date Picker Container
                 ****************************/
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 3.0, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 4))
                      ]),
                  child: TextFormField(
                    controller:
                        _dateController, //editing controller of this TextField
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: InputBorder.none,
                      hintText: 'Date',
                      filled: true,
                      errorStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                      hintStyle: ApptextStyle.HINT_TEXT,
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
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          _dateController.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "     Please Select date";
                      }
                      getDate = value;
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
