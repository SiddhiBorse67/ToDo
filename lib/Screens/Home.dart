import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/login.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState()=>_HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('TODO'),backgroundColor: Colors.lightBlue,),
    );
  }
}