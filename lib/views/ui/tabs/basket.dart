// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/app_style.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Basket",
          style: appStyle(50, Colors.black.withOpacity(.8), FontWeight.bold),
        ),
      ),
    );
  }
}
