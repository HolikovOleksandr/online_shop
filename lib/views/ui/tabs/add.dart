// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/app_style.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Create",
          style: appStyle(50, Colors.black.withOpacity(.8), FontWeight.bold),
        ),
      ),
    );
  }
}
