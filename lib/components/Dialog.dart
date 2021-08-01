import 'package:flutter/material.dart';
void showError(String msg,BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(msg),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Text(
                "Okay",
              ))
        ],
      ));
}