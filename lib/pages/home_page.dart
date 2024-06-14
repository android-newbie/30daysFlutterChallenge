//ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  String name = "Aman";
  final dummyList = List.generate(100, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget catalog"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) =>
            MyProductWidget(item: dummyList[index]),
      ),
      drawer: MyDrawer(),
    );
  }
}
