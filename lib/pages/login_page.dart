// ignore_for_file: prefer_const_constructors, sort_child_properties_last

//import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//variables
  String name = "";
  bool buttonPressed = false;

  final _formKey = GlobalKey<FormState>();

  validation(BuildContext context) async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      buttonPressed = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/undraw.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cant be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter the password",
                        label: Text("Password"),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 6) {
                          return "Password cant be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(buttonPressed ? 200 : 10),
                child: Material(
                    color: Colors.deepPurple,
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => validation(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: buttonPressed ? 70 : 150,
                        height: buttonPressed ? 70 : 50,
                        //color: Colors.deepPurpleAccent,
                        child: buttonPressed
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),

                        alignment: Alignment.center,

                        // decoration: BoxDecoration(
                        //   color: Colors.deepPurple,
                        //     color:buttonPressed?Colors.deepOrange: Colors.deepPurple,
                        //     shape: BoxShape.circle,

                        //    ),
                        // ),
                      ),
                    )
                    // SizedBox(
                    //   width: 150,
                    //   height: 50,
                    //   child: ElevatedButton(
                    //     onPressed: () =>
                    //         Navigator.pushNamed(context, MyRoutes.homeRoute),
                    //     child: Text(
                    //       "Login",
                    //       style: TextStyle(fontSize: 15),
                    //     ),
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: Color.fromRGBO(107, 99, 254, 1),
                    //       foregroundColor: Colors.black,
                    //     ),
                    //   ),
                    // )
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
