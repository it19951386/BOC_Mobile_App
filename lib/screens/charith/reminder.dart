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
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.amber.shade300,
                                      Colors.amber.shade200
                                    ],
                                    stops: [0.2, 0.8],
                                  ),
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
                              height: 500.0,
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 20.0, 12.0, 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Text(
                                            'Transfer Credit',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          Text(
                                            'This is card body',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            '12/06/2021',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.grey[800]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    elevation: 5.0,
                                    margin:
                                        EdgeInsets.fromLTRB(30, 40, 30, 0.0),
                                  ),
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 20.0, 12.0, 20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Text(
                                            'Request Account Status',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          Text(
                                            'This is card body',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            '26/05/2021',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.grey[800]),
                                          )
                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    elevation: 5.0,
                                    margin:
                                        EdgeInsets.fromLTRB(30, 20, 30, 0.0),
                                  ),
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
