import 'package:flutter/material.dart';
import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:boc_mobile_app/screens/charith/widgets/export_widegts.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(appBarTitle: "1968745 | Galle", showBackButton: true),
      body: Stack(
        children: [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              Expanded(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(height: 60),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () {},
                                  elevation: 5,
                                  child: Icon(
                                    Icons.download,
                                    size: 30,
                                  ),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 20),
                                RaisedButton(
                                  onPressed: () {},
                                  elevation: 5,
                                  child: Icon(
                                    Icons.email,
                                    size: 30,
                                  ),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 20),
                                RaisedButton(
                                  onPressed: () {},
                                  elevation: 5,
                                  child: Icon(
                                    Icons.filter_alt,
                                    size: 30,
                                  ),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total Balance      :  LKR 27,550.98',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Current Balance :  LKR 26,750.45',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            elevation: 5.0,
                          ),
                          SizedBox(height: 40),
                          SingleChildScrollView(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Colors.amber.shade300,
                                    Colors.amber.shade200
                                  ],
                                  stops: [0.2, 0.8],
                                ),
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: 500.0,
                              child: DefaultTabController(
                                length: 2,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                offset: Offset(0,
                                                    2), // changes position of shadow
                                              )
                                            ],
                                            color: Colors.amber.shade400,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TabBar(
                                          labelColor: Colors.black,
                                          labelStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins-Medium'),
                                          indicator: BoxDecoration(
                                              color: Color(0xFFDBA702),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          tabs: [
                                            Tab(text: 'Activity'),
                                            Tab(text: 'Details'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 400,
                                      child: TabBarView(
                                        children: [
                                          ActivityTab(),
                                          DetailsTab(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
