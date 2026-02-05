import 'package:flutter/material.dart';

class MyClick extends StatefulWidget {
  const MyClick({super.key});

  @override
  State<MyClick> createState() => _MyClickState();
}

class _MyClickState extends State<MyClick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('click'), backgroundColor: Colors.grey),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print('clicked on text button');
              },
              onLongPress: () {
                print('long pressed on textbutton');
              },
              child: Text('TextButton', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                print('clicked on outlined button');
              },
              child: Text('OutlinedButton', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                print('clicked on elevated button');
              },
              child: Text('ElevateButton', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),

            InkWell(
              onTap: () {
                print('this is text');
              },
              child: Text('Click here...!', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('this is chair');
              },
              child: Image.asset('assets/images/chair.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
