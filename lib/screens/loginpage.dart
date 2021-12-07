import 'package:flutter/material.dart';
import 'package:untitled1/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernamecontoller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("LoginPage"),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myTextField("Username", usernamecontoller),
            myBox(),
            myTextField("Password", passwordcontroller),
            myBox(),
            mySubmitButton(context, usernamecontoller, passwordcontroller),
          ],
        ),
      ),
    );
  }
}
