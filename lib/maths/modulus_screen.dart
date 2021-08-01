import 'package:flutter/material.dart';

// ignore: camel_case_types
class Modulus_Screen extends StatefulWidget {
  @override
  _Modulus_ScreenState createState() => _Modulus_ScreenState();
}

// ignore: camel_case_types
class _Modulus_ScreenState extends State<Modulus_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Division"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
                Text(
                  "%",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),
              ),
              onPressed: (){},
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              // child: TextField(
              //   decoration: InputDecoration(
              //       labelStyle: TextStyle(
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black
              //       ),
              //       contentPadding: EdgeInsets.all(10)
              //   ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
