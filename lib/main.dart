import 'dart:io';

import 'package:flutter/material.dart';

import 'Screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
