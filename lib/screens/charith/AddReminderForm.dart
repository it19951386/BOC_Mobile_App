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
                SizedBox(height: 10),
                /****************************
                    Time Picker Container
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
                  child: Center(
                    child: TextFormField(
                      controller:
                          _timeController, //editing controller of this TextField
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
                        border: InputBorder.none,
                        hintText: 'Time',
                        filled: true,
                        errorStyle: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.timer,
                            size: 18,
                            color: Colors.grey,
                          ),
                        ),
                        hintStyle: ApptextStyle.HINT_TEXT,
                      ),
                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );

                        if (pickedTime != null) {
                          print(pickedTime.format(context)); //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm()
                              .parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime =
                              DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            _timeController.text =
                                formattedTime; //set the value of text field.
                          });
                        } else {
                          print("Time is not selected");
                        }
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "     Please set a time";
                        }
                        getTime = value;
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /****************************
                            Clear Button
                     ****************************/
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0, color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 4))
                              ]),
                          child: FlatButton(
                              onPressed: () {
                                _formKey.currentState!.reset();
                                _subjectController.clear();
                                _descriptionController.clear();
                                _dateController.clear();
                                _timeController.clear();
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ),
                              color: Colors.white,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              )),
                        ),
                      ],
                    ),
                    /****************************
                            Save Button
                     ****************************/
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border:
                                  Border.all(width: 2.0, color: Colors.black12),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 4))
                              ]),
                          child: FlatButton(
                              onPressed: () async {
                                widget.subjectFocusNode.unfocus();
                                widget.descriptionFocusNode.unfocus();
                                widget.dateFocusNode.unfocus();
                                widget.timeFocusNode.unfocus();

                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    _isProcessing = true;
                                  });

                                  await Database.addReminder(
                                      subject: getSubject,
                                      description: getDescription,
                                      date: getDate,
                                      time: getTime);

                                  setState(() {
                                    _isProcessing = false;
                                  });

                                  _formKey.currentState!.reset();
                                  _subjectController.clear();
                                  _descriptionController.clear();
                                  _dateController.clear();
                                  _timeController.clear();
                                }
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins-Medium',
                                  ),
                                ),
                              ),
                              color: Colors.amber,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _isProcessing
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : Center(
                            child: Text(''),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
