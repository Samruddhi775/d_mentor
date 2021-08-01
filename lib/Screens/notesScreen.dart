import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class NotesScreen extends StatefulWidget {
  NotesScreen(this.id);
  String id;
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  var message;
  bool isLoaded= false;
  getNotes() async {
    var url = 'https://codembs.com/dmentor/viewnotes.php';
    var res = await http.post(Uri.parse(url),body: {
      "id" : widget.id
    });
    print(res.body);
    message = jsonDecode(res.body);
    setState(() {
          isLoaded = true;
        });
  }

  @override
  void initState() { 
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Screen'),
      ),
      body: isLoaded?
      ListView.builder(
        itemCount: message.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Container(child: Text(message[index]["notes"],softWrap: true,)),
          );
        },
      ):Center(child: CircularProgressIndicator(),),
    );
  }
}