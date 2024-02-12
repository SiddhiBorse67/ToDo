import 'package:flutter/material.dart';
// import 'package:todo_firebase/auth/authform.dart';
import 'package:todoprojectapp/auth/login.dart';

class scree extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<scree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Authentication')),
      body: login(),
    );

  }
}