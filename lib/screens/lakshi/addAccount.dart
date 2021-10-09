import 'package:boc_mobile_app/screens/lakshi/thirdPartyTransfers.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/accNo.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/background-image.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/ben-name.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/email.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/nickname.dart';
import 'package:boc_mobile_app/screens/lakshi/widget/roundBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
