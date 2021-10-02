import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddReminder extends StatefulWidget {
  const AddReminder({Key? key}) : super(key: key);

  @override
  _AddReminderState createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  TextEditingController dateinput = TextEditingController();
  //create Datepicker object called dateinput

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
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
            children: [
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
                        children: [
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
                              children: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
