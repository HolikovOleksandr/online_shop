// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/app_style.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search",
          style: appStyle(50, Colors.black.withOpacity(.8), FontWeight.bold),
        ),
      ),
    );
  }
}
