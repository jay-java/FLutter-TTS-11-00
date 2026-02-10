import 'package:flutter/material.dart';

import 'P001_rowCol.dart';
import 'P002_scroll.dart';
import 'P003_image.dart';
import 'P004_rowcol.dart';
import 'P005_decoration.dart';
import 'P006_card.dart';
import 'P007_stack.dart';
import 'P008_listview.dart';
import 'P009_ListTile.dart';
import 'P010_clickevent.dart';
import 'P011_Grid.dart';
import 'P012_dateTime.dart';
import 'P013_ScreenOne.dart';

void main() {
  runApp(const Mytext());
}

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreenOne(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       'MyApp',
      //       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //     ),
      //     actions: [
      //       Icon(Icons.add),
      //       SizedBox(width: 10,),
      //       Icon(Icons.settings),
      //       SizedBox(width: 10,),
      //     ],
      //     backgroundColor: Colors.green,
      //   ),
      //   body: Center(
      //     child: Container(
      //       height: 400,
      //       width: 400,
      //       color: Colors.amberAccent,
      //       child: Center(
      //         child: Text(
      //           'this is flutter application',
      //           style: TextStyle(
      //             fontSize: 30,
      //             color: Colors.blue,
      //             // letterSpacing: 3
      //             backgroundColor: Colors.grey.shade300,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
