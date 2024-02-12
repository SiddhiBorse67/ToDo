
// import 'dart:html';
// import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoprojectapp/auth/scree.dart';
import 'package:todoprojectapp/first.dart';
// import 'package:todoprojectapp/first.dart';
import 'Screens/Home.dart';
import 'auth/login.dart';
import 'auth/register.dart';

// void main() => runApp(new MyApp());
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();



  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyBDcI59Jtch9TRl2j5XMq7Dch-pT0GC8dY',
        appId: '1:24757437212:android:03e6b1d3842939058070d9',
        messagingSenderId: '24757437212',
        projectId: 'todo-c1b2a'
    )
  );

  // await Firebase.initializeApp();

  runApp(new MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // home:Home(),
      // home: login(),
      // home:first(),
      // home:register(),
        home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot)
    {
      if (snapshot.hasData) {
        return Home();
      } else {
        return first();
      }
    },
        ),

      debugShowCheckedModeBanner: false,
      theme:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.purple),
    );
  }
}