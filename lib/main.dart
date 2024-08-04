import 'package:flutter/material.dart';
import 'package:udemy_flutter/pages/Home.dart';
import 'package:udemy_flutter/pages/Setting.dart';
import 'package:udemy_flutter/pages/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/home': (context) => Home(),
        '/setting': (context) => Setting(),
      },
    );
  }
}
