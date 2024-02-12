
import 'package:flutter/material.dart';



class register extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<register> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
var _email='';
var _password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register here'),
        backgroundColor: Colors.lightBlue,
      ),
      body:
      Padding (
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              TextFormField(
                style: TextStyle(),
                // obscureText: true,
                keyboardType: TextInputType.emailAddress,
                key: ValueKey('UserName'),

                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  hintText: "Username",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16.0),



              TextFormField(
                style: TextStyle(),
                // obscureText: true,
                keyboardType: TextInputType.emailAddress,
                key: ValueKey('email'),
                validator: (value){
                  if(value!.isEmpty || !value.contains('@gmail.com'))
                  {
                    return 'Incorrect Email';
                  }
                  return null;
                },
                onSaved: (value)
                {
                  _email=value!;
                },
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  hintText: "Email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                style: TextStyle(),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                key: ValueKey('password'),
                validator: (value){
                  if(value!.isEmpty )
                  {
                    return 'Incorrect Password';
                  }
                  return null;
                },
                onSaved: (value)
                {
                  _email=value!;
                },
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 16.0),
              TextFormField(
                style: TextStyle(),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                key: ValueKey('confirm password'),
                validator: (value){
                  if(value!.isEmpty )
                  {
                    return 'Incorrect Password';
                  }
                  return null;
                },
                onSaved: (value)
                {
                  _email=value!;
                },
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  hintText: " Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),




              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add authentication logic here
                      // For simplicity, just print the values for now
                      print('Email: ${_emailController.text}');
                      print('Password: ${_passwordController.text}');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    child: Text('Sign In'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add authentication logic here
                      // For simplicity, just print the values for now
                      // print('Email: ${_emailController.text}');
                      // print('Password: ${_passwordController.text}');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    child: Text('Cancel'),
                  ),
                ],
              ),

            ],

          ),
        ),
      ),
      //overflow: TextOverflow.ellipsis,
    );
  }
}