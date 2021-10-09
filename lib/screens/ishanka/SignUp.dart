import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'palatte.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _formkey = GlobalKey<FormState>();

  var name = " ";
  var email = " ";
  var phoneNo = " ";
  var accountNo = " ";
  var password = " ";
  var confirmPassword = " ";

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    accountNoController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final accountNoController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  registration() async{
    if(password == confirmPassword){
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.amber,
          content: Text('Registered Successfully.Please Sign In ',
            style:TextStyle(
                fontSize: 20.0
            ) ,
          ),
        )
        );

        CollectionReference users = FirebaseFirestore.instance.collection('users');


          // Call the user's CollectionReference to add a new user
          return users.add({
            'name': name,
            'email': email,
            'phone Number': phoneNo,
            'account Number': accountNo,
            'password' : password
          }).then((value) => print("User Added"))
              .catchError((error) => print("Failed to add user: $error")).then((value) =>  Navigator.push(context, MaterialPageRoute(builder:(context) => Login() )));




      }on FirebaseAuthException catch (error){
        if(error.code == 'weak-password'){
          print('Password is too week');

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text('Password is too week',
              style:TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
              ) ,
            ),
          ),
          );
        }
        else if(error.code == 'email-already-in-use'){
          print('Account is already exists ');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text('Account is already exists ',
              style:TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
              ) ,
            ),
          ),
          );
        }

      }
    }
    else {
      print('Password and confirm password does not match');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text('Password and confirm password does not match',
          style:TextStyle(
            fontSize: 20.0,
            color: Colors.amber,
          ) ,
        ),
      ),
      );
    }
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
                    child: Center(
                      child: Image(
                          image:AssetImage('assets/logo.png')
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 90, 0, 50),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(10.0,0.0, 260.0, 0),
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          style:SignInText,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(10.0,0.0, 162.0, 0),
                    child: Column(
                      children: [
                        Text(
                            'Register to Online banking.',
                            style:NText
                        ),

                      ],
                    ),

                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(20, 25, 20, 150),
                    child: Column(
                      children: [


                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none,
                                hintText: 'Full Name',
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'

                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.user,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            controller: nameController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "     Please Enter Full Name";
                              }

                              return null;
                            },

                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //email
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none,
                                hintText: 'Email',
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'

                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.mailBulk,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            controller: emailController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "     Please Enter Email";
                              }
                              else if (!value.contains('@')){
                                return '     Please Enter valid Email';
                              }
                              return null;
                            },

                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //phone no
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'

                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.phoneAlt,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText
                            ),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: phoneController,
                            validator: (value){
                            String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
                            RegExp regExp = new RegExp(pattern);
                            if (value == null || value.isEmpty) {
                            return '     Please enter mobile number';
                            }
                            else if (!regExp.hasMatch(value)) {
                            return '     Please enter valid mobile number';
                            }
                            return null;
                            }

                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),


                        //account no
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                                  border: InputBorder.none,
                                  hintText: 'Account Number',
                                  filled: true,
                                  errorStyle: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'

                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Icon(
                                      FontAwesomeIcons.book,
                                      size: 19,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintStyle: TBodyText
                              ),
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: accountNoController,
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return "     Please Account No";
                                }
                                return null;
                              }

                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //password
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                border: InputBorder.none,
                                hintText: 'Password' ,
                                filled: true,
                                errorStyle:
                                TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'

                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.userLock,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText
                            ),
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            controller: passwordController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "      Please Enter Password";
                              }
                              return null;
                            },
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //confirm password
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.amberAccent
                              ),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))]
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                border: InputBorder.none,
                                hintText: 'Confirm Password' ,
                                filled: true,
                                errorStyle:
                                TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'

                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    FontAwesomeIcons.userLock,
                                    size: 19,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintStyle: TBodyText
                            ),
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            controller: confirmPasswordController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "      Please Confirm Password";
                              }
                              return null;
                            },
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Container(
                          width:350,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(14),
                            boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey,offset: Offset(0,4))],
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(255,253,197,12),Color.fromARGB(255,255, 231, 107)],
                            ),
                          ),
                          child: FlatButton(
                            onPressed:() {
                              if(_formkey.currentState!.validate()){
                                setState(() {
                                  name = nameController.text;
                                  email = emailController.text;
                                  phoneNo = phoneController.text;
                                  accountNo = accountNoController.text;
                                  password = passwordController.text;
                                  confirmPassword = confirmPasswordController.text;
                                });
                                registration();

                              }

                            } ,
                            child: Text(
                                'Sign Up',
                                style: SButtonText
                            ),
                          ),
                        ),

                      ],
                    ),

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
