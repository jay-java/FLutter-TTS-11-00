import 'package:flutter/material.dart';

class MyScreenTwo extends StatelessWidget {
  const MyScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppName'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Text('Hello User',style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
