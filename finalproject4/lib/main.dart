import 'package:finalproject4/loginScreen.dart';
import 'package:flutter/material.dart';

void main () {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key})  :super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'سرينا',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
home: LoginPage(),
);

  }
  }