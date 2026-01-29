import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(title: Text('LIstView'), backgroundColor: Colors.green),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            child: Image.asset('assets/images/${images[index]}'),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
