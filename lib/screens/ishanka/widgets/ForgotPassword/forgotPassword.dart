import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../palatte.dart';
import '../widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  
  final _formKey = GlobalKey<FormState>();

  var email ="";

  final emailController = TextEditingController();
  
  resetPassword() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.amber,
        content: Text("Password Reset Email has been sent",
        style: TextStyle(fontSize: 18.0),
        ),
      ),);

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login() ));
      
    }on FirebaseAuthException catch(error){

      if(error.code == 'user-not-found'){
        print(' 🛑 No user found in that mail!');

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor:Colors.blueGrey,
          content: Text(" 🛑 No user found in that mail",
            style: TextStyle(fontSize: 18.0,color: Colors.amber),
          ),
        ),);

      }

    }
  }

  @override
  void dispose() {
    emailController.dispose();
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
            key: _formKey,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   height: 250,
                   child: Center(
                     child: Image(
                         image:AssetImage('assets/logo.png')
                     ),
                   ),
                 ),

                 Padding(
                   padding:EdgeInsets.fromLTRB(10.0,0.0, 160.0, 0),
                   child: Column(
                     children: [
                       Text(
                         'Reset Password',
                         style:SignInText,
                       ),

                     ],
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Padding(
                   padding:EdgeInsets.fromLTRB(10.0,0.0, 180.0, 0),
                   child: Column(
                     children: [
                       Text(
                           'Please enter your Email ',
                           style:NText
                       ),

                     ],
                   ),
                 ),
                 SizedBox(
                   height: 30,
                 ),

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
                               FontAwesomeIcons.user,
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
                           return "    ✉ Please Enter Email";
                         }
                         else if (!value.contains('@')){
                           return '    ✉ Please Enter valid Email';
                         }
                         return null;
                       },

                     ),
                   ),

                   SizedBox(
                     height: 18,
                   ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
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
                             if(_formKey.currentState!.validate()){
                               setState(() {
                                 email = emailController.text;
                               });
                               resetPassword();
                             }


                           } ,
                           child: Text(
                               'Send Email',
                               style: SButtonText
                           ),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
                         child: Text(
                             "* Reset link will be send to your email",
                             style: NText
                         ),
                       ),

                     ],
                   ),


                   
               

                 ],
               ),
             ),
                 

               ],
             ),
           ),
          ),
        )
      ],
    );
  }
}
