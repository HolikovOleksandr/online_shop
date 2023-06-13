import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Main Screen',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 36,
        ),
      )),
    );
  }
}
