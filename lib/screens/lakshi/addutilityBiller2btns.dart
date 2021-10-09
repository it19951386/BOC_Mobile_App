import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddUtility02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddUtility02State();
  }
}

class _AddUtility02State extends State<AddUtility02> {
  String? value;
  final items = ["W.A.L.M Wickramasinghe"];

  String? value2;
  final items2 = ["TELEPHONE", "TELEVISION","ELECTRICITY"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Utility Biller'),
        ),
        body: Container(    
          padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.amberAccent),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: Colors.white, offset: Offset(0, 4))
                ]),
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: [
              Padding( 
                padding: const EdgeInsets.only(left: 5, right: 5), 
                child: DropdownButton<String>(
                  value: value,
                  items: items.map((String buildMenuItem) {
                    return DropdownMenuItem(
                      value: buildMenuItem,
                      child: Text(buildMenuItem),
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                  hint: Text('Select Customer Type'),
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 38,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  underline: SizedBox(
                    height: 3,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),

              Padding( 
                padding: const EdgeInsets.only(left: 5, right: 5), 
                child: DropdownButton<String>(
                  value: value2,
                  items: items2.map((String buildMenuItem) {
                    return DropdownMenuItem(
                      value: buildMenuItem,
                      child: Text(buildMenuItem),
                    );
                  }).toList(),
                  onChanged: (value2) => setState(() => this.value2 = value2),
                  hint: Text('Select Bill Category'),
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 38,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  underline: SizedBox(
                    height: 3,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              )
            ]
            )
            )
            );
  }
}
