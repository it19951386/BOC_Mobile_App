import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class SavingAccounts extends StatelessWidget {
  const SavingAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(appBarTitle: "Saving Accounts", showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
