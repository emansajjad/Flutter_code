import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:workspace/DashboardScreen.dart';
import 'LoginScreen.dart';

class SlashScreen extends StatefulWidget {
  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PeakPerform",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Little Steps, Big Change",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        color: Colors.purpleAccent,
      ),
    );
  }
}
