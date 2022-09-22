import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: Center(
              child: Text(title,
                  style: const TextStyle(color: Colors.white, fontSize: 35)))),
    );
  }
}
