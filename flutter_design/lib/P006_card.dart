import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyCard'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          elevation: 40,
          color: Colors.blue,
          child: Container(
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
