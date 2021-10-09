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

  final _formKey = GlobalKey<FormState>();

  bool _isProcessing = false;

  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
}

class _AddReminderFormState extends State<AddReminderForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
