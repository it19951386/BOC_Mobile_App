import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DetailsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
