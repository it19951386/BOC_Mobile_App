import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:boc_mobile_app/screens/charith/data/Reminder_Collection.dart';
import 'package:boc_mobile_app/screens/charith/constants/app_textStyle.dart';

class ReminderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Database.readReminders(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Something when wrong !');
        } else if (snapshot.hasData || snapshot.data != null) {
          return ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 15.0),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var noteInfo =
                  snapshot.data!.docs[index].data() as Map<String, dynamic>;
              String docId = snapshot.data!.docs[index].id;
              String title = noteInfo['title'];
              String description = noteInfo['description'];
              String date = noteInfo['date'];

              return Column(
                children: [
                  Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              date,
                              textAlign: TextAlign.right,
                              style: ApptextStyle.CARD_DATE,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            title,
                            style: ApptextStyle.CARD_TITLE,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            description,
                            style: ApptextStyle.CARD_SUB_TITLE,
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5.0,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  ),
                ],
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
          ),
        );
      },
    );
  }
}
