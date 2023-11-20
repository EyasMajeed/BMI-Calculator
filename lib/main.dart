// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home(),
    );
  }
}
