import 'package:flutter/material.dart';
import 'home.dart';
import 'signup.dart';
import 'forgot.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account',
        textAlign: TextAlign.center,
        ),
        ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            Container(
              padding: const EdgeInsets.only(
                  top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Enter username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Enter password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 20.0, left: 20.0),
              child: const TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print("Create Account");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pass()));
                    },
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(200)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                print("Create Account");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: const Text(
                "New User? Create Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
