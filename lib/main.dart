// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:test/myAnimatedList.dart';
import 'package:test/shareComp.dart';

import 'Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'font1',
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => RegisterScreen(),
        "/myAnimatedList": (context) => MyAnimatedList(),
      },
    );
  }
}
