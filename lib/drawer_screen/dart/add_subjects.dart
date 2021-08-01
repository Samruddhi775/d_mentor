import 'package:d_mentor/components/Dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AddSubject extends StatefulWidget {
  @override
  _AddSubjectState createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  TextEditingController subject = TextEditingController();
  String courseChoose;
  String branchChoose;
  String semChoose;

  List course = [
    "B.E",
    "M.E",
  ];

  List branch = [
    "CSE",
    "IT",
    "EXTC",
  ];
  List semester = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
  ];

  addSubject()async{
    var url = 'https://codembs.com/dmentor/addsubject.php';
    var res = await http.post(Uri.parse(url),body: {
      "course" : courseChoose,
      "dept":branchChoose,
      "sem": semChoose,
      "subject" : subject.text
    });
    showError(res.body, context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Add Subjects"
        ),
      ),
      body: Column(
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
                    "Select Course",
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
              value: courseChoose,
              onChanged: (newValue){
                setState(() {
                  courseChoose= newValue;
                });
              },
              items: course.map((valueItem){
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
            child: DropdownButton(
              hint: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    "Select Department",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
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
              value: branchChoose,
              onChanged: (newValue){
                setState(() {
                  branchChoose = newValue;
                });
              },
              items: branch.map((valueItem){
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
            child: DropdownButton(
              hint: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    "Select Semester",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
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
              value: semChoose,
              onChanged: (newValue){
                setState(() {
                  semChoose = newValue;
                });
              },
              items: semester.map((valueItem){
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
              controller: subject,
              decoration: InputDecoration(
                  labelText: "Enter Subject",
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
                addSubject();
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
      ),
    );
  }
}
