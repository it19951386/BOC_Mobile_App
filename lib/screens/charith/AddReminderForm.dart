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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
