// import 'package:bus_tracking_app/Screens/SplashScreen.dart';


import 'package:bus_tracking_app/BLSPLASHSCREEN/SplashScreen.dart';
import 'package:bus_tracking_app/termsandcondition.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final  Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
     future: _initialization,
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.hasError) {
          return Container();
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BHSplashScreen());
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container(
          color: Color.fromARGB(255, 243, 240, 240),
        );
      },
    );

  }
}