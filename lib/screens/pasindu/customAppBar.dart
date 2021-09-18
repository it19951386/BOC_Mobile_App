import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final double barHeight = 55;
  const customAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;
    // return AppBar(
    //   backgroundColor: Color.fromARGB(255, 253, 197, 12),
    //   title: Text(widget.appBarTitle),
    // );
    return new Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: 
                Text(
                appBarTitle,
                style: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
        ],),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 253, 197, 12), Color.fromARGB(255,255,231,107)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.9, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
  }

