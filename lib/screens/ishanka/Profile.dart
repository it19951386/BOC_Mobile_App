import 'package:boc_mobile_app/screens/pasindu/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/widgets.dart';

void main() =>runApp(MaterialApp(
  home: Profile() ,
  debugShowCheckedModeBanner: false,
));

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  var name = " ";
  var email = " ";
  var phoneNo = " ";
  var accountNo = " ";
  var password = " ";
  var confirmPassword = " ";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final accountNoController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Profile", showBackButton: true),
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

              Card(



                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage(
                          'assets/visacard.png',
                        ),

                        height: 223,
                        width: 360,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 35,
                        right: 15,
                        left: 38,
                        child: Text(
                          'Mr.Ishanka',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

          


              Expanded(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),

                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Colors.amber.shade400,
                                    Colors.amber.shade200,
                                    Colors.amber.shade300
                                  ],
                                  stops: [
                                    0.3,
                                    0.6,
                                    0.7
                                  ]),
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
                            height: 700.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 40),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                  child: Text('Name :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,

                                    ),
                                  ),
                                ),
                                Padding(

                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextInput(
                                    inputAction: TextInputAction.next ,
                                    inputType: TextInputType.text,
                                    icon: FontAwesomeIcons.user,
                                    hint: 'Mr.Ishanka ',


                                  ),
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                  child: Text('Account Number :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextInput(
                                    inputAction: TextInputAction.next ,
                                    inputType: TextInputType.text,
                                    icon: FontAwesomeIcons.book,
                                    hint: '200507000',


                                  ),
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                  child: Text('Email:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextInput(
                                    inputAction: TextInputAction.next ,
                                    inputType: TextInputType.text,
                                    icon: FontAwesomeIcons.mailBulk,
                                    hint: 'ishanka44@gmail.com',


                                  ),
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                  child: Text('Branch :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextInput(
                                    inputAction: TextInputAction.next ,
                                    inputType: TextInputType.text,
                                    icon: FontAwesomeIcons.building,
                                    hint: 'Malabe',


                                  ),
                                ),

                                SizedBox(
                                  height: 15,
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                  child: Text('Phone Number :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextInput(
                                    inputAction: TextInputAction.next ,
                                    inputType: TextInputType.text,
                                    icon: FontAwesomeIcons.phoneAlt,
                                    hint: '0765476204',


                                  ),
                                ),







                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );

  }
}



// Widget buildImageCard() => Card(
//
//
//
//   clipBehavior: Clip.antiAlias,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(24),
//   ),
//   child: Padding(
//     padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
//     child: Stack(
//       alignment: Alignment.center,
//       children: [
//         Ink.image(
//           image: AssetImage(
//             'assets/VisaCard.png',
//           ),
//
//           height: 223,
//           width: 360,
//           fit: BoxFit.cover,
//         ),
//         Positioned(
//           bottom: 35,
//           right: 15,
//           left: 38,
//           child: Text(
//             'Name',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontSize: 18,
//               fontFamily: 'Poppins'
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// );
