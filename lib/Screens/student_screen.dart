import 'dart:convert';

import 'package:d_mentor/Screens/notesScreen.dart';
import 'package:d_mentor/maths/maths_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
    var message;
  bool isLoaded = false;

  getList() async{
    var url = 'https://codembs.com/dmentor/notes.php';
    var res = await http.get(Uri.parse(url));
    message = jsonDecode(res.body);
    print(res.body);
    setState(() {
      isLoaded = true;
    });
  }
  @override
  void initState() { 
    super.initState();
    getList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
            "D-Mentor"
        ),
      ),
      body: isLoaded?
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: message.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotesScreen(message[index]["id"])));
              },
              child: Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          )
                      ),
                      child: Center(child: Text(message[index]["name"],style: TextStyle(fontSize: 25),)),
                    ),
            ),
          );
        },
      ): Center(child: CircularProgressIndicator(),),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.dashboard_sharp),
              title: Text(
                "Maths",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MathsScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard_sharp),
              title: Text(
                "Dashboard",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                "Info",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_phone_outlined),
              title: Text(
                "Contact",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
