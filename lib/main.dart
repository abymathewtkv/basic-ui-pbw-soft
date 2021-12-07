import 'package:flutter/material.dart';

import 'package:untitled1/screens/registrationpage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'basic UI',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
