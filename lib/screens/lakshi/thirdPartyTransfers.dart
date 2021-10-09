import 'package:first_project/screens/lakshika/addAccount.dart';
import 'package:first_project/screens/lakshika/widgets/background-image.dart';
import 'package:first_project/screens/lakshika/widgets/roundBtnthirdParty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPartyTrans extends StatelessWidget {
  const ThirdPartyTrans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          appBar: AppBar(
            title: Text('Third Party Transfer'),
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Add Beneficiary-BOC Accounts',
                  nextScreen: AddAccount(), 
                ),
              ), 
              
               SizedBox(height: 5,),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Add Beneficiary-Other Accounts',
                  nextScreen: ThirdPartyTrans(),
                ),
              ),

               SizedBox(height: 5,),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Third Party BOC Account Transfer',
                  nextScreen: ThirdPartyTrans(),
                ),
              ),

               SizedBox(height: 5,),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Third Party BOC-Other Account/Cards',
                  nextScreen: ThirdPartyTrans(),
                ),
              ),

               SizedBox(height: 5,),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20), 
                child: RoundedButton(
                  buttonText: 'Other Bank Accounts',
                  nextScreen: ThirdPartyTrans(),
                ),
                
              ),

               SizedBox(height: 5,),

               Padding(
                padding: const EdgeInsets.fromLTRB(30, 75, 30, 20),
                child: RoundedButton(
                  buttonText: 'Other Bank Credit Cards',
                  nextScreen: ThirdPartyTrans(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
