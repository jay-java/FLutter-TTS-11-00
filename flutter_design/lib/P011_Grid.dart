import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  List images = [
    'chair.jpeg',
    'mobile.jpeg',
    'shirt.jpeg',
    'shoes.jpeg',
    'table.jpeg',
    'chair.jpeg',
    'mobile.jpeg',
    'shirt.jpeg',
    'shoes.jpeg',
    'table.jpeg',
    'chair.jpeg',
    'mobile.jpeg',
    'shirt.jpeg',
    'shoes.jpeg',
    'table.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'), backgroundColor: Colors.grey),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              children: [
                Image.asset('assets/images/${images[index]}')
              ],
            ),
          );
        },
        itemCount: images.length,
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(color: Colors.grey),
      //     ),
      //   ],
    );
  }
}
