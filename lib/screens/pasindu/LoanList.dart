import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';

class LoanList extends StatelessWidget {
  const LoanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appBarTitle: "Loans"),
      body: Container(
        child: Center(
          child: Text("LoanList"),
        ),
      ),
    );
  }
}
