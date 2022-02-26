import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account",
        textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Enter your Name",
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
                    hintText: "Full Name",
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
                    "Enter a username",
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
                    hintText: "Code Name",
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
                    "Enter your Email Id",
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
                    hintText: "Email id",
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
                    "Enter your password",
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
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Agent code",
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
                    "Re-enter Agent Code",
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
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(200)),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      actionsAlignment: MainAxisAlignment.center,
                      backgroundColor: Colors.green,
                      title: const Text('Details Confirmed',
                      style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 25.0 ,
                          ),
                      ),
                      content: const Text('Please choose your purpose',
                      style: TextStyle(
                           fontSize: 25.0 ,
                          ),
                      ),
                      actions: <Widget>[
                        
                        TextButton(
                          onPressed: () {
                            // Navigator.pop(context, 'OK');
                            Navigator.push(
                       context, MaterialPageRoute(builder: (context) => const Home()));
                          },
                          child: const Text('Buyer',
                          style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20.0 ,
                           color: Colors.black,
                          ),
                        ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                       context, MaterialPageRoute(builder: (context) => const Home()));
                          },
                          child: const Text('Seller',
                          style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20.0 ,
                           color: Colors.black,
                          )
                          ),
                        ),
                      ],
                    ),
                  );

                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text('Register',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Log In");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text(
                "Already registered? Log In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}