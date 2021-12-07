import 'package:flutter/material.dart';
import 'package:untitled1/screens/dashboard.dart';
import 'package:untitled1/screens/loginpage.dart';

AppBar myAppBar(String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.blue,
    elevation: 0.0,
  );
}

TextFormField myFormField(String hint, var value) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter some value";
      }
      return null;
    },
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      hintText: hint,
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}

SizedBox myBox() {
  return SizedBox(
    height: 20,
  );
}

Container myButton(var _formKey, BuildContext context, String text) {
  return Container(
    height: 50,
    width: 100,
    child: ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('Processing '),
            ),
          );
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DashBoard()));
        }
      },
      child: Text(text),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    ),
  );
}

TextField myTextField(String text1, TextEditingController contoller) {
  return TextField(
    controller: contoller,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      hintText: text1,
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}

Container myLoginButton(BuildContext context) {
  return Container(
    height: 50,
    width: 100,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Text('Login'),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    ),
  );
}

Container mySubmitButton(
    BuildContext context,
    TextEditingController usercontoller,
    TextEditingController passowrdcontrol) {
  return Container(
    height: 50,
    width: 100,
    child: ElevatedButton(
      onPressed: () {
        if (usercontoller.text == passowrdcontrol.text) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DashBoard()));
        }
        else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('wrong email and password '),
            ),
          );
        }
      },
      child: Text("Submit"),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    ),
  );
}
