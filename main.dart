import 'package:flutter/material.dart';
//import 'package:workspace/LoginScreen.dart';

import 'splashScreen.dart';

void main() {
  runApp(EmanApp());
}

class EmanApp extends StatefulWidget {
  @override
  State<EmanApp> createState() => _EmanAppState();
}

class _EmanAppState extends State<EmanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
              headlineMedium: TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
              headlineLarge: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300),
              titleMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              headlineSmall:
                  TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              titleSmall: TextStyle(fontSize: 15))),
      home: SlashScreen(),
    );
  }
}
