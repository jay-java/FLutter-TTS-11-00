import 'package:flutter/material.dart';

class MyCircular extends StatelessWidget {
  const MyCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image'), backgroundColor: Colors.green),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.grey.shade300,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/chair.jpeg'),
                      ),
                    ),
                    SizedBox(width: 10,),
          
                    Container(
                      color: Colors.grey.shade300,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/mobile.jpeg'),
                      ),
                    ),
                    SizedBox(width: 10,),
          
                    Container(
                      color: Colors.grey.shade300,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/shirt.jpeg'),
                      ),
                    ),
                    SizedBox(width: 10,),
          
                    Container(
                      color: Colors.grey.shade300,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/shoes.jpeg'),
                      ),
                    ),
                    SizedBox(width: 10,),
          
                    Container(
                      color: Colors.grey.shade300,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/table.jpeg'),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/chair.jpeg'),
                ),
              ),
              SizedBox(height: 10,),
          
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/mobile.jpeg'),
                ),
              ),
              SizedBox(height: 10,),
          
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/shirt.jpeg'),
                ),
              ),
              SizedBox(height: 10,),
          
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/shoes.jpeg'),
                ),
              ),
              SizedBox(height: 10,),
          
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/table.jpeg'),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
