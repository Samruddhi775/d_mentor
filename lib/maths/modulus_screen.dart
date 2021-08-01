import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Modulus_Screen extends StatefulWidget {
  @override
  _Modulus_ScreenState createState() => _Modulus_ScreenState();
}

// ignore: camel_case_types
class _Modulus_ScreenState extends State<Modulus_Screen> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  var message;
  _operation(var o, var a, var b) async {
    var url = 'https://codembs.com/dmentor/calculate.php';
    var res = await http.post(Uri.parse(url), body: {"o": o, "a": a, "b": b});
    print(res.body);
    message = res.body;
    setState(() {
      isLoaded = true;
    });
  }

  bool isLoaded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Modulus"),
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
                      controller: a,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    "%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )),
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: b,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                onPressed: () {
                  _operation("5", a.text, b.text);
                },
              ),
              SizedBox(
                height: 30,
              ),
              isLoaded
                  ? Container(
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
                      child: Text(
                        message,
                        softWrap: true,
                      ))
                  : SizedBox()
            ],
          ),
        ));
  }
}
