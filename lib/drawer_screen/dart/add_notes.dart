import 'dart:convert';

import 'package:d_mentor/components/Dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddNotes extends StatefulWidget {
  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {

  bool isLoaded = false;
  List<String> subjects = List<String>();
  String subjectChoose;
  TextEditingController note = TextEditingController();
  getList() async{
    var url = 'https://codembs.com/dmentor/subject.php';
    var res = await http.get(Uri.parse(url));
    var message = jsonDecode(res.body);
    print(res.body);
    for(int i=0;i<message.length;i++)
      {
        subjects.insert(i, message[i]["name"]);
      }
    setState(() {
      isLoaded = true;
    });
  }

  addNote() async {
    var url = 'https://codembs.com/dmentor/addnotes.php';
    var res = await http.post(Uri.parse(url),body: {
      "subject" :subjectChoose,
      "notes" : note.text
    });
    print(res.body);
    showError(res.body, context);
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
          "Add Notes"
        ),
      ),
      body: isLoaded?
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: DropdownButton(
              hint: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Select Subject",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              dropdownColor: Color(0xfff3f3f4),
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              iconSize: 30,
              isExpanded: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              value: subjectChoose,
              onChanged: (newValue){
                setState(() {
                  subjectChoose= newValue;
                });
              },
              items: subjects.map((valueItem){
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
          ),
          Container(
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
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              controller: note,
              decoration: InputDecoration(
                  labelText: "Enter Notes",
                  labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                  contentPadding: EdgeInsets.all(10)
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            // ignore: deprecated_member_use
            child: RaisedButton(
              color: Colors.blue[200],
              onPressed: () {
                addNote();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              textColor: Colors.black,
              padding: const EdgeInsets.all(0),
              child: Text(
                "Submit",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
          ),
        ],
      ): Center(child: CircularProgressIndicator(),),
    );
  }
}
