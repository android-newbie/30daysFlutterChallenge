// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
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
          ElevatedButton(
            onPressed: () => print("hello"),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 15),
            ),
            style: ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(
                  Colors.white,
                ),
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromRGBO(107, 99, 254, 1))),
          )
        ],
      ),
    );
  }
}
