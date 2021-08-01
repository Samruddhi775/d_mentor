import 'package:d_mentor/components/background.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Info"
        ),
      ),
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 320,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          color: Colors.blue[100],
                          width:15
                      ),
                      top: BorderSide(
                          color: Colors.blue[300],
                          width: 10
                      ),
                      right: BorderSide(
                          color: Colors.blue[500],
                          width: 5
                      ),
                      bottom: BorderSide(
                          color: Colors.blue[800],
                          width: 3
                      )
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Shruti Amlani  =>  Data Gathering",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Durvesh Daryapurkar  =>  Front end",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Harshal Nemade  =>  Backend",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Satkar Ingale  =>  Database",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Anushka Dhule  =>  Documentation",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
