import 'package:boc_mobile_app/screens/ishanka/widgets/background-image.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/pasindu/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addutilityBiller2btns.dart';

class AddUtility03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddUtility03State();
  }
}

class _AddUtility03State extends State<AddUtility03> {
  String? value;
  final items = ["Mobitel", "Dialog", "SLT mobitel", "Airtel", "Hutch"];

  String? value2;
  final items2 = ["Register", "Unregistered"];

  String? value3;
  final items3 = ["Dialog/Broadband", "SLT"];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          appBar: CustomAppBar(
              appBarTitle: "Add Utility Biller", showBackButton: true),
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(

              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 17),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 3.0, color: Colors.amberAccent),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 4))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90),
                        child: DropdownButton<String>(
                          value: value,
                          items: items.map((String buildMenuItem) {
                            return DropdownMenuItem(
                              value: buildMenuItem,
                              child: Text(buildMenuItem),
                            );
                          }).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value),
                          hint: Text('Select Biller'),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 38,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          underline: SizedBox(
                            height: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 3.0, color: Colors.amberAccent),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 4))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 72),
                        child: DropdownButton<String>(
                          value: value2,
                          items: items2.map((String buildMenuItem) {
                            return DropdownMenuItem(
                              value: buildMenuItem,
                              child: Text(buildMenuItem),
                            );
                          }).toList(),
                          onChanged: (value2) =>
                              setState(() => this.value2 = value2),
                          hint: Text('Select Biller Type'),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 38,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          underline: SizedBox(
                            height: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(width: 3.0, color: Colors.amberAccent),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 4))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: DropdownButton<String>(
                          value: value3,
                          items: items3.map((String buildMenuItem) {
                            return DropdownMenuItem(
                              value: buildMenuItem,
                              child: Text(buildMenuItem),
                            );
                          }).toList(),
                          onChanged: (value3) =>
                              setState(() => this.value3 = value3),
                          hint: Text('Select Biller Category'),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 38,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          underline: SizedBox(
                            height: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ClearButton(),
                        SizedBox(
                          width: 0,
                        ),
                        SaveButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(width: 1.0, color: Colors.black12),
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
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
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

class ClearButton extends StatelessWidget {
  const ClearButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.amberAccent),
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
                      builder: (context) => AddUtility02(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(1, 5, 5, 5),
                child: Text(
                  'Previous',
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
