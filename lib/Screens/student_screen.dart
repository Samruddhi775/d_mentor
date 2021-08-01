import 'package:d_mentor/maths/maths_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
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
                      "Maths",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    icon: Icon(
                      Icons.all_inclusive,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MathsScreen()));
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
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
              )
            ],
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
              leading: Icon(Icons.feedback_outlined),
              title: Text(
                "Feedback",
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
