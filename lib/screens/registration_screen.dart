import 'package:chat_app_class/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_class/constants.dart';

import '../components/main_btn.dart';

class RegistrationScreen extends StatefulWidget {
  static const  id='registerScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? email;
  String ?password;
  FirebaseAuth _auth=FirebaseAuth.instance;

  void getLoginState() {
   FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }
  @override
  initState(){
    getLoginState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
         Flexible(
             child:  Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                email=value;
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
               SizedBox(
                 height: 8.0,
               ),

            TextField(
              onChanged: (value) {
                password = value;
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
        MainBtn(
          color:Colors.blueAccent,
          text:  'Register',
          onPressed: () async {
            if(email!=null && password!=null) {
              try{
              final  newUser=   await _auth.
              createUserWithEmailAndPassword(
                  email:email!.trim(), password: password!);

              if(newUser != null && mounted){
                Navigator.pushNamedAndRemoveUntil(context,ChatScreen.id, (r)=>false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text('you are logged in ${newUser.user!.email}')),
                );
              }
            }catch(e) {
                print(e);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text(e.toString()))
              );
              }

          }
            else{
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text('check your credentials'),),
              );
            }
          },

        ),
          ],
        ),
      ),
    );
  }
}
