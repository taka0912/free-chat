import 'package:chat_app/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'chat',
                child: Container(
                  height: 200.0,
                  child: Image.asset('image/chat.png'),
                ),
              ),
              SizedBox(height: 48.0),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {

                  },
                  decoration: kTextFieldDecoration.copyWith(hintText: 'メールアドレス')
              ),
              SizedBox(height: 15.0),
              TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'パスワード')
              ),
              SizedBox(height: 24.0),
              RoundedButton(
                title: 'サインイン',
                colour: Colors.blueAccent,
                onPressd: () {

                },
              )
            ]),
      ),
    );
  }
}
