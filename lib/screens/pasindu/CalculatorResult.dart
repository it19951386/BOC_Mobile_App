import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CalculatorResult extends StatefulWidget {
  CalculatorResult(
      {Key? key,
      required this.dataMap,
      required this.income,
      required this.tExpenses})
      : super(key: key);
  Map<String, double> dataMap;
  double income, tExpenses;
  @override
  _CalculatorResultState createState() => _CalculatorResultState();
}

class _CalculatorResultState extends State<CalculatorResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Budget", showBackButton: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Card(income: widget.income, tExpenses: widget.tExpenses),
          ),
          PieChart(
            dataMap: widget.dataMap,
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.bottom,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Card extends StatefulWidget {
  Card({Key? key, required this.income, required this.tExpenses})
      : super(key: key);
  double income, tExpenses;
  Color clr = Colors.green;
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    widget.income - widget.tExpenses < 0 ? widget.clr = Colors.red : null;
    return Container(
      padding: EdgeInsets.only(left: 22, right: 22),
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Income', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "LKR " + widget.income.toString() + "0",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Expenses', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "LKR " + widget.tExpenses.toString() + "0",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Balance', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "LKR " + (widget.income - widget.tExpenses).toString() + "0",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: widget.clr),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
