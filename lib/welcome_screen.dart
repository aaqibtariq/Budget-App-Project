
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_budget_app/Login/login_screen.dart';
import 'package:my_budget_app/Login/registration_screen.dart';
import 'Widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  // AnimationController controller;
  // Animation animation;

  @override
  void initState() {



    super.initState();
   //
   //  controller =  AnimationController(
   //      duration: Duration(seconds: 3),
   //      vsync: this);
   // // animation =ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
   //  controller.forward();
   //  controller.addListener(() {
   //    setState(() {});
   //
   //  });



  }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  //
  // }


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
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Text('Budget App',

                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              color: Colors.lightBlue,
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );

              },
            ),
            RoundedButton(
              title: 'Register',
              color:  Colors.blueAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return RegistrationScreen();
                  }),
                );

              },

            ),

          ],
        ),
      ),
    );
  }
}

