import 'dart:convert';

import 'package:fetch_api/model/user_model.dart';
import 'package:fetch_api/single_user_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Users> usersList = [];

  Future<List<Users>> getUsersApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    var data = jsonDecode(response.body.toString());
    print('data : $data');
    if (response.statusCode == 200) {
      usersList.clear();
      for (Map i in data) {
        usersList.add(Users.fromJson(i));
      }
      print(usersList);
      return usersList;
    } else {
      return usersList;
    }
  }

  Future<Users?> getUserById(int id) async {
    Users? u;
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users/$id'),
    );
    var data = jsonDecode(response.body.toString());
    print('data : $data');
    if (response.statusCode == 200) {
      u = Users.fromJson(data);
      print(u);
      return u;
    } else {
      return u;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: getUsersApi(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                print('user length : ${usersList.length}');
                return Text('Loading !', style: TextStyle(fontSize: 20));
              } else {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          Users? u = await getUserById(usersList[index].id!);
                          print(u);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SingleUserPage(u),
                            ),
                          );
                        },
                        child: Card(
                          child: ListTile(
                            leading: Text(
                              usersList[index].id.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            title: Text(
                              usersList[index].name.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text(
                              usersList[index].phone.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: usersList.length,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
