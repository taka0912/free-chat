import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.blueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: '',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
    border: Border(
      top: BorderSide(color: Colors.blueAccent, width: 2.0),
    )
);

const kTextFieldDecoration =  InputDecoration(
    hintText: 'password',
    contentPadding:
    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
      borderSide: BorderSide(color: Colors.blueAccent,width: 2.0),
    )
);