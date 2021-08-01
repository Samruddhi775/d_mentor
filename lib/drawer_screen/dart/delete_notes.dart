import 'dart:convert';

import 'package:d_mentor/components/Dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteNotes extends StatefulWidget {
  @override
  _DeleteNotesState createState() => _DeleteNotesState();
}

class _DeleteNotesState extends State<DeleteNotes> {
  var message;
  bool isLoaded = false;
  getList() async{
    var url = 'https://codembs.com/dmentor/subject.php';
    var res = await http.get(Uri.parse(url));
    message = jsonDecode(res.body);
    print(res.body);
    setState(() {
      isLoaded = true;
    });
  }
  remove(var id)async{
    var url = 'https://codembs.com/dmentor/deletesubject.php';
    var res = await http.post(Uri.parse(url),body: {
      "id": id
    });
    showError(res.body, context);
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
          "Delete Notes"
        ),
      ),
      body: isLoaded?
      ListView.builder(
        itemCount: message.length,
        itemBuilder: (context,index){
          return ListTile(
            trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){
              remove(message[index]["id"]);
            },),
            title: Container(child: Text(message[index]["name"])),
          );
        },
      ):Center(child: CircularProgressIndicator(),)
    );
  }
}
