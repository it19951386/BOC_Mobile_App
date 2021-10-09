import 'package:boc_mobile_app/screens/ishanka/widgets/background-image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ThirdPartyTransfers(),
      debugShowCheckedModeBanner: false,
    ));

class ThirdPartyTransfers extends StatelessWidget {
  const ThirdPartyTransfers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Ninja ID Card'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  BoxButton(
                    buttonText: 'Add Beneficiary',
                  ),
                  SizedBox(height: 25),
                  BoxButton(
                    buttonText: 'Third Party BOC Account Transfer',
                  ),
                  SizedBox(height: 25),
                  BoxButton(
                    buttonText: 'Third Party BOC-Other Accounts',
                  ),
                  SizedBox(height: 25),
                  BoxButton(
                    buttonText: 'Other Bank Accounts',
                  ),
                  SizedBox(height: 25),
                  BoxButton(
                    buttonText: 'Other Bank   Credit Cards',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BoxButton extends StatelessWidget {
  const BoxButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
        ],
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 253, 197, 12),
            Color.fromARGB(255, 255, 231, 107)
          ],
        ),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(buttonText,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins')),
      ),
    );
  }
}
