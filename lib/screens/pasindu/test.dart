import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Center(
            child: Text('$index'),
          );
        }),
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Reminder"),
      ),
    );
  }
}

class Test3 extends StatelessWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("More"),
      ),
    );
  }
}
