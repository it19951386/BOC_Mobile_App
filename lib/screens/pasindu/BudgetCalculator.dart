import 'package:boc_mobile_app/screens/pasindu/CalculatorResult.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BudgetCalculator extends StatefulWidget {
  BudgetCalculator({Key? key}) : super(key: key);

  @override
  _BudgetCalculatorState createState() => _BudgetCalculatorState();
}

class _BudgetCalculatorState extends State<BudgetCalculator> {
  late List<ExpenseItem> expenses = [];

  TextEditingController amountController = new TextEditingController();
  TextEditingController incomeController = new TextEditingController();
  late double tExpenses = 0.00;
  String category = 'Food';

  Map<String, double> dataMap = {};

  @override
  Widget build(BuildContext context) {
    print(expenses);
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
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23, top: 51),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Total Income',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 26),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 3.0, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 4))
                      ]),
                  child: TextFormField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(new RegExp('[\\-|\\ ]'))
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '0.00',
                      filled: true,
                    ),
                    controller: incomeController,
                  ),
                ),
                SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expenses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 98,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                  offset: Offset(0, 4))
                            ],
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 253, 197, 12),
                                Color.fromARGB(255, 255, 231, 107)
                              ],
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              _showDialog(context);
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Expanded(
                  child: ListView.builder(
                      itemCount: expenses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return expenses[index];
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 3.0, color: Colors.amberAccent),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                  offset: Offset(0, 4))
                            ],
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                incomeController.text = "";
                                expenses = [];
                              });
                            },
                            child: const Text(
                              'Reset',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                  offset: Offset(0, 4))
                            ],
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 253, 197, 12),
                                Color.fromARGB(255, 255, 231, 107)
                              ],
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CalculatorResult(
                                          dataMap: dataMap,
                                          tExpenses: tExpenses,
                                          income: double.parse(
                                              incomeController.text),
                                        )),
                              );
                            },
                            child: const Text(
                              'Calculate',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text("Category"),
                  SizedBox(height: 21),
                  Container(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    width: (MediaQuery.of(context).size.width),
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
                    child: DropdownButtonFormField<String>(
                      value: category,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          category = newValue!;
                        });
                      },
                      items: <String>[
                        'Food',
                        'Education',
                        'Entertainment',
                        'Transport',
                        'Medicine',
                        'Utility Bills',
                        'Shopping',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text("Amount"),
                  SizedBox(height: 21),
                  Container(
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
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(
                            new RegExp('[\\-|\\ ]'))
                      ],
                      controller: amountController,
                      decoration: const InputDecoration(
                          hintText: '0.00',
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Center(
                child: Container(
                  width: 98,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          offset: Offset(0, 4))
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 253, 197, 12),
                        Color.fromARGB(255, 255, 231, 107)
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        tExpenses =
                            tExpenses + double.parse(amountController.text);
                        dataMap[category] = double.parse(amountController.text);
                        expenses.add(ExpenseItem(
                            categoryName: category,
                            amount: double.parse(amountController.text)));
                        category = "Food";
                        amountController.text = "";
                        print(dataMap);
                      });

                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          );
        });
  }
}

class ExpenseItem extends StatefulWidget {
  ExpenseItem({Key? key, required this.categoryName, required this.amount})
      : super(key: key);
  String categoryName;
  double amount;

  @override
  _ExpenseItemState createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 1, right: 1),
      child: Container(
        padding: EdgeInsets.only(left: 22, right: 22),
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.categoryName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "LKR " + widget.amount.toString() + "0",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
