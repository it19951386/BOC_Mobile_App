import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Add Accounts", showBackButton: true),
      body: Container(
        child: Center(child: Text('Add Account')),
      ),
    );
  }
}
