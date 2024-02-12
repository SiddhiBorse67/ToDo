// import 'package:first_project/Register.dart';
// import 'package:first_project/home_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoprojectapp/auth//register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoprojectapp/Screens/Home.dart';


class login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _email='';
  var _password='';
  final _formkey=GlobalKey<FormState>();
  var _username='';
  bool isloginPage=false;
//************************************************
  startauthentication() async {
    // final validity = _formkey.currentState!.validate();
    // FocusScope.of(context).unfocus();
  print("Inside auth****");

    // if (validity) {
    // if (_formkey.currentState != Null && _formkey.currentState !.validate()) {
    //   _formkey.currentState!.save();
    //   print("validate");
    //   submitform(_email, _password, _username);
    // }
     submitform(_email, _password, _username);

  }

  submitform(String email, String password, String username) async {
    print("Inside submit");
    final auth = FirebaseAuth.instance;
    UserCredential authResult;
    // final authResult;
    try {
      if (isloginPage) {
        authResult = await auth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        authResult = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print("stored in database..");
        
        // String uid = authResult.user!.uid;
        // final atabaseRefrence= FirebaseFirestore.instance
        //     .collection('users')
        //     .doc(uid)
        //     .set({'username': username, 'email': email});
        // **********************
        // CollectionReference users = FirebaseFirestore.instance.collection('users');
        //
        // return users.add({
        //   'name': username,
        //   'email': email,
        //   'password': password,
        // })
        //     .then((value) => print("User added successfully!"))
        //     .catchError((error) => print("Failed to add user: $error"));

        //***************************
      }
    }
    // on PlatformException catch (err) {
    //   var message = 'An error occured';
    //   if (err.message != null) {
    //     message = err.message;
    //   }
    //   Scaffold.of(context).showSnackBar(SnackBar(
    //     content: Text(message),
    //     backgroundColor: Colors.red,
    //   ));
    //  }
      catch (err) {
      print(err);
    }
  }




  //***************************************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isloginPage?Text('Login here'):Text('Register here'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(!isloginPage)
            TextFormField(
              style: TextStyle(),
              // obscureText: true,
              keyboardType: TextInputType.emailAddress,
              key: ValueKey('username'),
              validator: ( String? value){
                if(value==null )
                {
                  return 'Incorrect Username';
                }
                return null;
              },
              onSaved: (value)
              {
                _username=value!;
              },
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
              validator: (String? value){
                if(value==null || value.trim().length==0)
                  {
                    return "field is required";
                  }
                  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                    {
                      return "Enter valid email address";
                    }
              },
              onSaved: (value)
              {
                _email=value!;
              },
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                hintText: "email",

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
              validator: ( String? value){
                if(value!.isEmpty )
                {
                  return 'Incorrect Password';
                }
                return null;
              },
              onSaved: (value)
              {
                _password=value!;
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
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: Text('Cancel'),
                ),

                ElevatedButton(
                  onPressed: () {
                    //*******************************
                   // print("Pressed ****");
                     startauthentication();

















                    //******************************
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: isloginPage? Text('Login'):Text('Signup'),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isloginPage = !isloginPage;
                });
              },
              child: isloginPage?Text(
    'Dont have Account?',
    style: TextStyle(
    decoration: TextDecoration.underline,
    color: Color(0xff4c505b),
    fontSize: 16,
    ),
    ):Text(
                'Already have account?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xff4c505b),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}