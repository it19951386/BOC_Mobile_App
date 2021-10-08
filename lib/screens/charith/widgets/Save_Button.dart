import 'package:flutter/material.dart';

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
              border: Border.all(width: 2.0, color: Colors.black12),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5, color: Colors.grey, offset: Offset(0, 4))
              ]),
          child: FlatButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: Text(
                  'Save',
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
