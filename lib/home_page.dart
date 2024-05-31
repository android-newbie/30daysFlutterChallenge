//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Aman";

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget catalog"),
      ),
      body: Center(
        child: Text(
          "HELLO my name is $name",
          textDirection: TextDirection.ltr,
        ),
      ),
      drawer: Drawer(),
    );
  }
}
