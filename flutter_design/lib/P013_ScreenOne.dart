import 'dart:async';
import 'package:flutter/material.dart';
import 'P014_ScreenTwo.dart';

class MyScreenOne extends StatefulWidget {
  const MyScreenOne({super.key});

  @override
  State<MyScreenOne> createState() => _MyScreenOneState();
}

class _MyScreenOneState extends State<MyScreenOne> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyScreenTwo()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Text(
            'SplashScreen',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
