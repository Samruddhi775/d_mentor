import 'package:d_mentor/drawer_screen/dart/add_notes.dart';
import 'package:d_mentor/drawer_screen/dart/add_subjects.dart';
import 'package:d_mentor/drawer_screen/dart/approve_student.dart';
import 'package:d_mentor/drawer_screen/dart/contact.dart';
import 'package:d_mentor/drawer_screen/dart/delete_notes.dart';
import 'package:d_mentor/drawer_screen/dart/delete_subject.dart';
import 'package:d_mentor/drawer_screen/dart/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "D-Mentor"
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Approve Student",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Approve_Student()));
                    },
                  ),
                ),
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Add Subjects",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddSubject()));
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Delete Subjects",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteSubject()));
                    },
                  ),
                ),
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Add Notes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    icon: Icon(
                      Icons.notes_sharp,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotes()));
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Delete Notes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteNotes()));
                    },
                  ),
                ),
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Info",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  child: TextButton.icon(
                    label: Text(
                      "Contact",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    icon: Icon(
                      Icons.contact_phone_outlined,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              " Samruddhi Zombade",
              style: GoogleFonts.tangerine(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: Text(
              " zombadesamruddhi@gmail.com",
              style: GoogleFonts.tangerine(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text(
                "Approve Student",
              style: TextStyle(
                fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Approve_Student()));
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(
                "Add Subjects",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddSubject()));
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text(
                "Delete Subjects",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteSubject()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notes_sharp),
            title: Text(
                "Add Notes",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotes()));
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text(
                "Delete Notes",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteNotes()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(
                "Info",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone_outlined),
            title: Text(
                "Contact",
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
        ],
      ),
    ),
    );
  }
}