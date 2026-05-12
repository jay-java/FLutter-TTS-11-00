import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final int counter;

  const SecondScreen({required this.counter});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late int counter;

  @override
  void initState() {
    counter = widget.counter;
    super.initState();
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('counter : ${widget.counter}');
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
        backgroundColor: Colors.green,
      ),
      body: Text('counter : $counter', style: TextStyle(fontSize: 30)),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
