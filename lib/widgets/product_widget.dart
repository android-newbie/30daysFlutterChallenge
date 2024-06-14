// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class MyProductWidget extends StatelessWidget {
  final Item item;
  const MyProductWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      //shape: StadiumBorder(),
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: ListTile(
        onTap: () {},
        // splashColor: Colors.grey,
        contentPadding: EdgeInsets.all(15.0),
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          style: TextStyle(color: Colors.black),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
