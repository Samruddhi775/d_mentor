import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Approve_Student extends StatefulWidget {
  @override
  _Approve_StudentState createState() => _Approve_StudentState();
}

// ignore: camel_case_types
class _Approve_StudentState extends State<Approve_Student> {
  var message;
  bool isLoaded = false;
  getList() async{
    var url = 'https://codembs.com/dmentor/student.php';
    var res = await http.get(Uri.parse(url));
    message = jsonDecode(res.body);
    print(res.body);
    setState(() {
      isLoaded = true;
    });
  }

  approve(var id)async{
    var url = 'https://codembs.com/dmentor/approvestudent.php';
    var res = await http.post(Uri.parse(url),body: {
      "id": id
    });
    print(res.body);
    setState(() {
      isLoaded = false;
      getList();
    });
  }
  remove(var id)async{
    var url = 'https://codembs.com/dmentor/deletestudent.php';
    var res = await http.post(Uri.parse(url),body: {
      "id": id
    });
    setState(() {
      isLoaded= false;
      getList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Approve Student"
        ),
      ),
      body: isLoaded?
      ListView.builder(
        itemCount: message.length,
        itemBuilder: (context,index){
          return ListTile(
            trailing: SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.done), onPressed: (){
                    approve(message[index]["id"]);
                  }),
                  IconButton(icon: Icon(Icons.clear), onPressed: (){
                    remove(message[index]["id"]);
                  })
                ],
              ),
            ),
            title: Container(child: Text(message[index]["name"])),
          );
        },
      ):Center(child: CircularProgressIndicator(),)
    );
  }
}
