import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyRow'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment,
            children: [
              Text('One'),
              Text('Two'),
              Text('Three'),
              Text('Four'),
              Text('Five'),
              Text('Six'),
              Text('Seven'),
            ],
          ),
          // child: Row(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text('One'),
          //     Text('Two'),
          //     Text('Three'),
          //     Text('Four'),
          //     Text('Five'),
          //     Text('Six'),
          //     Text('Seven'),
          //   ],
          // ),
        ),
      ),
    );
  }
}
