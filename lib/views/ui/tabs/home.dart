// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/app_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home",
          style: appStyle(50, Colors.black.withOpacity(.8), FontWeight.bold),
        ),
      ),
    );
  }
}
