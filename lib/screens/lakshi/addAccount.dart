import 'package:boc_mobile_app/screens/ishanka/widgets/background-image.dart';
import 'package:boc_mobile_app/screens/lakshi/thirdPartyTransfers.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/accNo.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/ben-name.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/email.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/nickname.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: AddAccount(),
      debugShowCheckedModeBanner: false,
    ));

class AddAccount extends StatelessWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
        appBar: CustomAppBar(
            appBarTitle: "Third Party Account Beneficiaries",
            showBackButton: true),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 10.0,
          ),
          child: SingleChildScrollView(
            child: Form(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 48),
                child: Column(
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    BeneficiaryName(
                      hint: 'Beneficiary Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    BeneficiaryNickName(
                      hint: 'Nick Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    AccountNo(
                      hint: 'Account Number',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Email(
                      hint: 'Email',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CancelButton(),
                          SubmitButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    ]);
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(width: 2.0, color: Colors.black12),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
              ]),
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins-Medium',
                  ),
                ),
              ),
              color: Colors.amber,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              )),
        ),
      ],
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 3.0, color: Colors.amberAccent),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
              ]),
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPartyTransfers(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins-Medium',
                  ),
                ),
              ),
              color: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              )),
        ),
      ],
    );
  }
}
