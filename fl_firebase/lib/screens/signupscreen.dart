import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../services/signupService.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('SignUp', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Lottie.asset('assets/anim/Login Leady.json'),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter name',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: contactController,
                decoration: InputDecoration(
                  hintText: 'Enter contact',
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter email',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: 'Enter password',
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  var name = nameController.text.trim();
                  var contact = contactController.text.trim();
                  var email = emailController.text.trim();
                  var password = passwordController.text.trim();

                  try {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        )
                        .then(
                          (value) => {
                            log(1),
                            signUpUser(name, contact, email, password),
                          },
                        );

                    print("Account created successfully");
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'email-already-in-use') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('User already exists!')),
                      );
                      print("User already exists. Please login instead.");
                    } else if (e.code == 'invalid-email') {
                      print("Invalid email format");
                    } else if (e.code == 'weak-password') {
                      print("Password is too weak");
                    } else {
                      print("Error: ${e.message}");
                    }
                  }

                  // await FirebaseAuth.instance
                  //     .createUserWithEmailAndPassword(
                  //       email: email,
                  //       password: password,
                  //     )
                  //     .then(
                  //       (value) => {
                  //         log(1),
                  //         signUpUser(name, contact, email, password),
                  //       },
                  //     );
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Already have an account? Login"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
