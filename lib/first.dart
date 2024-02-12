// import 'dart:async';
// import 'package:flutter/material.dart';
// // import 'package:splashscreen/splashscreen.dart';
// import 'package:first_project/Loginpage.dart';
//
// class first extends StatefulWidget {
//   @override
//   _firstPageState createState() => _firstPageState();
// }
//
// //
// // class first extends StatelessWidget {
// // final primaryColor=const Color(0xFF90EE90);
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.lightGreen,
// //       body: Container(
// //         width: MediaQuery.of(context).size.width,
// //         height: MediaQuery.of(context).size.height,
// //         color: primaryColor,
// //         child: SafeArea(
// //           child: Column(
// //             children: <Widget>[
// //               Text("CropDeal...",
// //             style: TextStyle(fontSize: 44,color: Colors.white),),
// //             Text("Let's sold the crops",
// //               style: TextStyle(fontSize: 40,color: Colors.white),),
// //               Image(image: NetworkImage('https://www.w3schools.com/w3css/img_snowtops.jpg')),
// //             ],
// //           ),
// //         )
// //
// //
// //
// //       ),
// //     );
// //   }
// // }
//
// class _firstPageState extends State<first> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//                 LoginPage()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreen,
//       body: Center(
//       child: Container(
//
//
//           // child: Column(
//             // children: <Widget>[
//              child: Text("CropDeal...",
//             style: TextStyle(fontSize: 44,color: Colors.white),),
//             // Text("Let's sold the crops",
//             //  style: TextStyle(fontSize: 40,color: Colors.white),),
//             // ],
//           ),
//         // ),
//
//       ),
//
//     );
//   }
// }
// // class SecondScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title:Text("GeeksForGeeks")),
// //       body: Center(
// //           child:Text("Home page",textScaleFactor: 2,)
// //       ),
// //     );
// //   }
// // }
//
import 'auth/login.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:first_project/custom.dart';

class first extends StatelessWidget {
  final primaryColor = const Color(0xFFF7FAF8);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        // color: primaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.20),
                Text(
                  "TODO",
                  style: TextStyle(fontSize: 50, color: Colors.lightBlue),
                ),
                SizedBox(height: _height * 0.02),
                AutoSizeText(
                  "Let’s Plan a day",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.lightBlue,
                  ),
                ),
                SizedBox(height: _height * 0.15),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> login()),
                    );
                    // Add authentication logic here
                    // For simplicity, just print the values for now
                    // print('Email: ${_emailController.text}');
                    // print('Password: ${_passwordController.text}');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  ),
                  child: Text('Get Started'),
                ),
                SizedBox(height: _height * 0.10),
                // FlatButton(
                //   child: Text(
                //     "Sign In",
                //     style: TextStyle(color: Colors.white, fontSize: 25),
                //   ),
                //   onPressed: () {},
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

