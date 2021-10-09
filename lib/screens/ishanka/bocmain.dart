import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initiazation = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initiazation,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("some error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return MaterialApp(
          title: "BOC APP",
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          routes: {
            'SendRegister': (context) => Signup(),
          },
        );
      },
    );
  }
}
