import 'package:flutter/material.dart';
import 'package:untitled1/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Registration"),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 60),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                myFormField("Name", _formKey),
                myBox(),
                myFormField("Email", _formKey),
                myBox(),
                myFormField("Phone", _formKey),
                myBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myButton(_formKey, context, "Register"),
                    myLoginButton(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
