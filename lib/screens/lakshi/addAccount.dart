import 'package:first_project/screens/lakshika/thirdPartyTransfers.dart';
import 'package:first_project/screens/lakshika/widgets/accNo.dart';
import 'package:first_project/screens/lakshika/widgets/background-image.dart';
import 'package:first_project/screens/lakshika/widgets/ben-name.dart';
import 'package:first_project/screens/lakshika/widgets/email.dart';
import 'package:first_project/screens/lakshika/widgets/nickname.dart';
import 'package:first_project/screens/lakshika/widgets/roundBtn.dart';
import 'package:flutter/material.dart';
//import 'package:first_project/main.dart';
import 'package:flutter/services.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
        appBar: AppBar(
          title: Text('Third Party Account Beneficiaries'),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 10.0,
          ),
          child: Form(
            child: Column(
              children: [
                BeneficiaryName(
                  hint:'Beneficiary Name',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 18,
                ),

                BeneficiaryNickName(
                  hint:'Nick Name',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 18,
                ),

                AccountNo(
                  hint:'Account Number',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 18,
                ),

                Email(
                  hint:'Email',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 18,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RoundedButton(
                      buttonText:'SUBMIT',
                      nextScreen: AddAccount()
                    )
                  ], 
                ), 
                SizedBox(
                  height: 16,
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RoundedButton(
                      buttonText:'CANCEL',
                      nextScreen: ThirdPartyTrans()
                    )
                  ], 
                ), 
              ],
            ),
            
          ),
        ),
      )
    ]);
  }
}
