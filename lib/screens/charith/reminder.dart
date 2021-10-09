import 'package:boc_mobile_app/screens/charith/addReminder.dart';
import 'package:boc_mobile_app/screens/charith/data/reminderCards.dart';
import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/calender.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Reminders",
        showBackButton: false,
      ),
      body: new Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: LayoutBuilder(builder: (BuildContext context,
                      BoxConstraints viewportConstraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //importing calender widget
                            Calender(),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
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
                                        0.2,
                                        0.6,
                                        0.9
                                      ]),
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ]),
                              height: 800.0,
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: ReminderList(),
                              ), //importing reminder cards
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddReminder()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
