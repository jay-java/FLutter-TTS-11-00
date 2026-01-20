import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll'), backgroundColor: Colors.grey),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.yellow),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.blue),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.green),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.grey),

                    SizedBox(width: 30),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellowAccent,
                    ),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.orange),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.pink),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.purple),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.black12),

                    SizedBox(width: 30),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.greenAccent,
                    ),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.lime),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.brown),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.blueGrey),

                    SizedBox(width: 30),
                    Container(height: 100, width: 100, color: Colors.white24),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(height: 300, width: 300, color: Colors.red),
              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.yellow),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.blue),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.green),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.grey),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.yellowAccent),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.orange),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.pink),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.purple),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.black12),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.greenAccent),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.lime),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.brown),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.blueGrey),

              SizedBox(height: 30),
              Container(height: 300, width: 300, color: Colors.white24),
            ],
          ),
        ),
      ),
    );
  }
}
