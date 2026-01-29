import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

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
      appBar: AppBar(title: Text('myListTile'), backgroundColor: Colors.green),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.green
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/${images[index]}'),
                ),
                title: Text(
                  '${images[index]}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(
                  'here is subtitle data',
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.delete),
              ),
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
