import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';

class BudgetCalculator extends StatelessWidget {
  const BudgetCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Budget Calculator',
        showBackButton: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BudgetCalculatorBody(),
        ],
      ),
    );
  }
}

class BudgetCalculatorBody extends StatelessWidget {
  const BudgetCalculatorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items;
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Total Income',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: '0.00',
                filled: true,
                fillColor: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Expenses',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                showPopUpForm(context));
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              )
            ],
          ),
          ExpensesList(),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                          onPressed: () {},
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                          onPressed: () {},
                          child: const Text('Calculate'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget showPopUpForm(BuildContext context) {
  return new AlertDialog(
    title: const Text('Popup example'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DropDownList(),
        TextField(
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: '0.00',
              filled: true,
              fillColor: Colors.white),
        ),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

class ExpensesList extends StatefulWidget {
  const ExpensesList({Key? key}) : super(key: key);

  @override
  _ExpensesListState createState() => _ExpensesListState();
}

class _ExpensesListState extends State<ExpensesList> {
  final List<double> expenses = [
    150.00,
    5751.00,
    2500.00,
    5751.00,
    2500.00,
    5751.00,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: expenses.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Text(expenses[index].toString()),
            );
          }),
    );
  }
}

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
