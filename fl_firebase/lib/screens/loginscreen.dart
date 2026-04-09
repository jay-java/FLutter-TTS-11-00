import 'package:fl_firebase/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import '../provider/googleSignInService.dart';
import 'forgotpasswordScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Login', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: Lottie.asset('assets/anim/Secure Login.json'),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter email',
                  suffixIcon: Icon(Icons.email),
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
                  hintText: 'Enter password',
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () async {
                  var email = emailController.text.trim();
                  var password = passwordController.text.trim();
                  try {
                    final User? firebaseUser =
                        (await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email,
                          password: password,
                        )).user;
                    if (firebaseUser != null) {
                      Get.to(() => Homescreen());
                    } else {
                      print('email or pass is incorrect');
                    }
                  } on FirebaseAuthException catch (e) {
                    print('error msg : $e');
                  }
                },
                child: Text(
                  'Login',
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
                Get.to(() => ForgotPasswordScreen());
              },
              child: Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Forgot Password ?'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.to(() => SignUpScreen());
              },
              child: Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Don't have an account? SignUp"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                final user = await AuthService().signInWithGoogle();
                if (user != null) {
                  print('Signed in: ${user.displayName}');
                }
              },
              child: Container(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login),
                        SizedBox(width: 20),
                        Text(
                          "SignIn with Google",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
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
