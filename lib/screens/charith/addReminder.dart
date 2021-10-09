import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddReminder extends StatefulWidget {
  final FocusNode _subjectFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();
  final FocusNode _dateFocusNode = FocusNode();
  final FocusNode _timeFocusNode = FocusNode();

  @override
  _AddReminderState createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  final _formkey = GlobalKey<FormState>();

  final FocusNode _subject = FocusNode();
  final FocusNode _description = FocusNode();
  final FocusNode _date = FocusNode();
  final FocusNode _time = FocusNode();

  TextEditingController dateinput = TextEditingController();
  //create Datepicker object called dateinput

  TextEditingController timeinput = TextEditingController();
  //create object called timeinput

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Reminder", showBackButton: true),
      body: Stack(
        children: [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              Expanded(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 120),
                          Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Colors.amber.shade400,
                                    Colors.amber.shade200,
                                    Colors.amber.shade300
                                  ],
                                  stops: [
                                    0.3,
                                    0.6,
                                    0.7
                                  ]),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 700.0,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 40),
                                /************************
                                        Subject
                                     ************************/
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: TextInput(
                                    icon: FontAwesomeIcons.fileSignature,
                                    label: 'Subject',
                                    hint: 'Enter Subject',
                                    inputAction: TextInputAction.next,
                                    inputType: TextInputType.name,
                                  ),
                                ),
                                SizedBox(height: 10),
                                /************************
                                        Description
                                     ************************/
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: DescriptionText(
                                    icon: FontAwesomeIcons.listAlt,
                                    label: 'Description',
                                    hint: 'Enter description',
                                    inputAction: TextInputAction.next,
                                    inputType: TextInputType.multiline,
                                  ),
                                ),
                                SizedBox(height: 10),
                                /****************************
                                        Date Picker Container
                                     ****************************/
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 3.0,
                                            color: Colors.amberAccent),
                                        borderRadius: BorderRadius.circular(14),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              color: Colors.grey,
                                              offset: Offset(0, 4))
                                        ]),
                                    child: TextField(
                                      controller:
                                          dateinput, //editing controller of this TextField
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10),
                                        border: InputBorder.none,
                                        hintText: '2021-09-25',
                                        labelText: 'Date',
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Icon(
                                            Icons.calendar_today,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        hintStyle: ApptextStyle.HINT_TEXT,
                                        labelStyle: ApptextStyle.TEXT_LABEL,
                                      ),
                                      readOnly: true,
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(
                                                    2000), //DateTime.now() - not to allow to choose before today.
                                                lastDate: DateTime(2101));

                                        if (pickedDate != null) {
                                          print(
                                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
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
                                  ),
                                ),
                                SizedBox(height: 10),
                                /****************************
                                        Time Picker Container
                                     ****************************/
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 3.0,
                                            color: Colors.amberAccent),
                                        borderRadius: BorderRadius.circular(14),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              color: Colors.grey,
                                              offset: Offset(0, 4))
                                        ]),
                                    child: Center(
                                      child: TextField(
                                        controller:
                                            timeinput, //editing controller of this TextField
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                          border: InputBorder.none,
                                          hintText: 'hh:mm:ss',
                                          labelText: 'Time',
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Icon(
                                              Icons.timer,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          hintStyle: ApptextStyle.HINT_TEXT,
                                          labelStyle: ApptextStyle.TEXT_LABEL,
                                        ),
                                        readOnly:
                                            true, //set it true, so that user will not able to edit text
                                        onTap: () async {
                                          TimeOfDay? pickedTime =
                                              await showTimePicker(
                                            initialTime: TimeOfDay.now(),
                                            context: context,
                                          );

                                          if (pickedTime != null) {
                                            print(pickedTime.format(
                                                context)); //output 10:51 PM
                                            DateTime parsedTime =
                                                DateFormat.jm().parse(pickedTime
                                                    .format(context)
                                                    .toString());
                                            //converting to DateTime so that we can further format on different pattern.
                                            print(
                                                parsedTime); //output 1970-01-01 22:53:00.000
                                            String formattedTime =
                                                DateFormat('HH:mm:ss')
                                                    .format(parsedTime);
                                            print(
                                                formattedTime); //output 14:59:00
                                            //DateFormat() is from intl package, you can format the time on any pattern you need.

                                            setState(() {
                                              timeinput.text =
                                                  formattedTime; //set the value of text field.
                                            });
                                          } else {
                                            print("Time is not selected");
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      ClearButton(),
                                      SaveButton(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
