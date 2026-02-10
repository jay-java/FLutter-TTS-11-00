import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({super.key});

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  @override
  Widget build(BuildContext context) {
    var dateTimeData = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: Text('DateTime'), backgroundColor: Colors.green),
      body: Center(
        child: Column(
          children: [
            Text(
              'Date : '
              '${dateTimeData.day}/${dateTimeData.month}/${dateTimeData.year}',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'Time : '
              '${dateTimeData.hour}:${dateTimeData.minute}:${dateTimeData.second}',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              'Formatted Date : ${DateFormat.jms().format(dateTimeData)}',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2026),
                  lastDate: DateTime(2030),
                );

                if(date != null){
                  print('date : ${date}');
                }
              },
              child: Text('Select Date', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()async {
               TimeOfDay? time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now()
              );
               if(time != null){
                 print('Time : $time');
               }
            }, child: Text('Select Time',style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
