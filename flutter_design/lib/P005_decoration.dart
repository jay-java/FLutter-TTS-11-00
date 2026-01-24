import 'package:flutter/material.dart';

class MyDecoration extends StatelessWidget {
  const MyDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Colors.blue,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.pink,width: 3),
            boxShadow: [
              BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 5)
            ]
          ),
        ),
      ),
    );
  }
}
