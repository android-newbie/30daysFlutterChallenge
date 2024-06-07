// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
            ),
            Image.asset(
              "assets/images/undraw.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter the username",
                      label: Text("Username"),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter the password",
                      label: Text("Password"),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, MyRoutes.homeRoute),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(107, 99, 254, 1),
                  foregroundColor: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
