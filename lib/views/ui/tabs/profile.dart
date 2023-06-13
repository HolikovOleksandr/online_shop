// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_shop/views/shared/app_style.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile",
          style: appStyle(50, Colors.black.withOpacity(.8), FontWeight.bold),
        ),
      ),
    );
  }
}
