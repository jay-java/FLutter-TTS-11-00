import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyStack'), backgroundColor: Colors.green),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.grey,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: Container(color: Colors.red, height: 200, width: 200),
              ),
              Positioned(
                top: 75,
                left: 75,
                child: Container(
                  color: Colors.yellowAccent,
                  height: 150,
                  width: 150,
                ),
              ),
              Positioned(
                left: 100,
                top: 100,
                child: Container(
                    // color: Colors.green,
                    height: 100,
                    width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
