import 'package:boc_mobile_app/screens/charith/data/Reminder_Collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../main.dart';
import '../../palatte.dart';
import 'package:flutter/material.dart';
import '../clickable-text.dart';
import '../widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../ishanka/widgets/ForgotPassword/forgotPassword.dart';

// void main() => runApp(MaterialApp(
//   home: Login(),
//   debugShowCheckedModeBanner: false,
// ));

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  var email = "";
  var password = " ";

  //get email as user_id for uniquekey
  String getId = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        print(' 🛑 No user found that email');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blueGrey,
            content: Text(
              ' 🛑 No user found that email',
              style: TextStyle(fontSize: 18.0, color: Colors.amber),
            ),
          ),
        );
      } else if (error.code == 'wrong-password') {
        print('Wrong password');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blueGrey,
            content: Text(
              'Wrong password',
              style: TextStyle(fontSize: 18.0, color: Colors.amber),
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    child: Center(
                      child: Image(image: AssetImage('assets/logo.png')),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 275.0, 0),
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          style: SignInText,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 170.0, 0),
                    child: Column(
                      children: [
                        Text('Please sign in to continue.', style: NText),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //text filed
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0, color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 4))
                              ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none,
                                hintText: 'Email',
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.user,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "    ✉ Please Enter Email";
                              } else if (!value.contains('@')) {
                                return '    ✉ Please Enter valid Email';
                              }
                              getId = value;
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0, color: Colors.amberAccent),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(0, 4))
                              ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                border: InputBorder.none,
                                hintText: 'Password',
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.lock,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText),
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "     🔐 Please Enter Password";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 18,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //1
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
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
                            if (_formkey.currentState!.validate()) {
                              Database.userId = getId;
                              print(getId);

                              setState(() {
                                email = emailController.text;
                                password = passwordController.text;
                              });
                              userLogin();
                            }
                          },
                          child: Text('Sign In', style: SButtonText),
                        ),
                      ),

                      //2
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 20),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPassword(),
                                ));
                          },
                          child: Text("Forgot Password?", style: NText),
                        ),
                      ),

                      //3
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        child: ClickableText(),
                      ),

                      //4 testpay

                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.amberAccent,
                        child: Icon(
                          FontAwesomeIcons.phoneAlt,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
