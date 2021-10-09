import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key, required this.appBarTitle, required this.showBackButton})
      : super(key: key);

  final String appBarTitle;
  final double barHeight = 55;
  final bool showBackButton;

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    // return AppBar(
    //   backgroundColor: Color.fromARGB(255, 253, 197, 12),
    //   title: Text(widget.appBarTitle),
    // );
    return new Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          showBackButton
              ? Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Row(children: [
                    GestureDetector(
                      child: FaIcon(
                        FontAwesomeIcons.chevronLeft,
                        size: 18,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        appBarTitle,
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                )
              : Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Row(children: [
                    Text(
                      appBarTitle,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                )
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 253, 197, 12),
              Color.fromARGB(255, 255, 231, 107)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.9, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
