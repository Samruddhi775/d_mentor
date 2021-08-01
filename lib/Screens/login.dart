
import 'dart:convert';

import 'package:d_mentor/Screens/next_screen.dart';
import 'package:d_mentor/Screens/register.dart';
import 'package:d_mentor/Screens/student_screen.dart';
import 'package:d_mentor/components/background.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  void _showError(String msg) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(msg),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Okay",
                ))
          ],
        ));
  }

  login()async {
    var url = 'https://codembs.com/dmentor/login.php';
    http.Response response = await http.post(Uri.parse(url), body: {
      "email": email.text,
      "password": pass.text,
    });
    print(response.body);
    var message = jsonDecode(response.body);
    if(message[0]["id"]=='0')
      {
        _showError('User Not Found');
      }
    else{
    if(message[0]["role"]=='Teacher')
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Next()));
    }
    else{
      //TODO: Student Screen
    }
    if(message[1]["role"]=='Student')
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentScreen()));
    }
    else{
      //TODO: Student Screen
    }

    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Username"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    labelText: "Password"
                ),
                obscureText: true,
              ),
            ),


            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  login();
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
                },
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}