import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:boc_mobile_app/screens/charith/widgets/calender.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/charith/data/utils.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        appBarTitle: "Reminders",
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
                            Calender(),
                            SizedBox(
                              height: 20.0,
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
    );
  }
}
