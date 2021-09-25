import 'package:boc_mobile_app/screens/pasindu/CustomAppBar.dart';
import 'package:flutter/material.dart';

class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Accounts",
        showBackButton: true,
      ),
      body: Container(
        child: Center(
          child: Text("Accounts"),
        ),
      ),
    );
  }
}
