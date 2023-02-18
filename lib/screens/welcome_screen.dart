import 'package:flutter/material.dart';
import 'package:chat_app_class/screens/loginscreen.dart';
import 'package:chat_app_class/screens/chat_screen.dart';
import 'package:chat_app_class/screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app_class/components/main_btn.dart';

class WelcomeScreen extends StatefulWidget {
  static const  id='welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  Duration duration=Duration(seconds:1);

  late Animation animation ;


  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen(( user) {
    if( user!=null){
      Navigator.pushNamedAndRemoveUntil(context, ChatScreen.id, (route) => false);
    }
  });
    controller=AnimationController(vsync: this,  duration: duration );

    controller.forward();
    animation= ColorTween(begin:Colors.grey,end:Colors.white).animate(controller);

    controller.addListener(() {
                   setState(() {});
                   });

    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
             Hero(tag:1, child:Container(
                  child: Image.asset('images/logo.png'),
                  height:controller.value*100,
                ),),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Chat App',
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                      speed: Duration(milliseconds: 200),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            MainBtn(
              color:Colors.lightBlueAccent ,
                text:'Log In',
                onPressed: () {
                  Navigator.pushNamed(context,LoginScreen.id);
                },

            ),

            MainBtn(
              color:Colors.blueAccent,
              text:  'Register',
              onPressed: () {
                Navigator.pushNamed(context,RegistrationScreen.id);
              },

            ),

          ],
        ),
      ),
    );
  }
}
