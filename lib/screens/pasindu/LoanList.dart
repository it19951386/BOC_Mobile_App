import 'package:boc_mobile_app/screens/pasindu/CustomAppBar.dart';
import 'package:flutter/material.dart';

class LoanList extends StatelessWidget {
  const LoanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Loans",
        showBackButton: true,
      ),
      body: Container(
        child: Center(
          child: Text("LoanList"),
        ),
      ),
    );
  }
}
