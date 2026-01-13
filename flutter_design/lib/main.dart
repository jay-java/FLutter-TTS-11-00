import 'package:flutter/material.dart';

void main() {
  runApp(const Mytext());
}

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.add),
            SizedBox(width: 10,),
            Icon(Icons.settings),
            SizedBox(width: 10,),
          ],
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.amberAccent,
            child: Center(
              child: Text(
                'this is flutter application',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  // letterSpacing: 3
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
