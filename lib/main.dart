import 'package:boc_mobile_app/screens/charith/reminder.dart';
import 'package:boc_mobile_app/screens/pasindu/BudgetCalculator.dart';
import 'package:boc_mobile_app/screens/pasindu/CalculatorResult.dart';
import 'package:boc_mobile_app/screens/pasindu/LoanDetails.dart';
import 'package:boc_mobile_app/screens/pasindu/LoanList.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home: Dashboard());
  }
}
