import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('users');

class Database {
  static String? userId;


  //insert reminder
  static Future<void> addReminder({
    required String subject,
    required String description,
    required String date,
    required String time,

  })async{
    DocumentReference documentReference = _mainCollection.doc(userId).collection('reminders').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": subject,
      "description": description,
      "date": date,
      "time": time
    };

    await documentReference.set(data).whenComplete(() => print("Successfully Added Reminder")).catchError((e) => print(e));
  }


  //update reminder
  static Future<void> updateReminder({
    required String subject,
    required String description,
    required String date,
    required String time,
    required String docId,
  }) async{
    DocumentReference documentReference = _mainCollection.doc(userId).collection('reminders').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": subject,
      "description": description,
      "date": date,
      "time": time
    };
    await documentReference.set(data).whenComplete(() => print("Reminder Updated in the database")).catchError((e) => print(e));
  }


  //read reminders
  static Stream<QuerySnapshot> readReminders(){
    CollectionReference reminderItems = _mainCollection.doc(userId).collection('reminders');

    return reminderItems.snapshots();
  }


  //delete reminders
  static Future<void> deleteReminder({
    required String docId,
  }) async{

    DocumentReference documentReference = _mainCollection.doc(userId).collection('reminders').doc(docId);

    await documentReference.delete().whenComplete(() => print("Reminder Deleted from the database")).catchError((e) => print(e));
  }
}