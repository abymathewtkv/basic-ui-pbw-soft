import 'package:flutter/material.dart';
import 'package:untitled1/widgets/widgets.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("HomePage"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Text('HomePage'),
        ),
      ),
    );
  }
}
