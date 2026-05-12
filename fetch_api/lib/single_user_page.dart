import 'package:flutter/material.dart';

import 'model/user_model.dart';

class SingleUserPage extends StatefulWidget {
  var u;

  SingleUserPage(Users? u);

  @override
  State<SingleUserPage> createState() => _SingleUserPageState();
}

class _SingleUserPageState extends State<SingleUserPage> {
  Object? get u => null;

  @override
  Widget build(BuildContext context) {
    print(u);
    return Scaffold(
      appBar: AppBar(title: Text('Single User'), backgroundColor: Colors.green),
      body: Column(
        children: [
          Text('id : ${widget.u?.id}'),
          Text('Name  : ${widget.u?.name}'),
          Text('Username  : ${widget.u?.username}'),
        ],
      ),
    );
  }
}
