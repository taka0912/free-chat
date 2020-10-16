import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
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
          children: [
            Row(
              children: [
                Hero(
                  tag: 'chat',
                  child: Container(
                    child: Image.asset('image/chat.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(width: 5.0),
                TypewriterAnimatedTextKit(
                  text: ['Free Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'サインイン',
              colour: Colors.blueAccent,
              onPressd: (){
                Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundedButton(
              title: 'サインアップ',
              colour: Colors.blueAccent,
              onPressd: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },),
          ],
        ),
      ),
    );
  }
}

