import 'package:flutter/material.dart';
import 'package:udemy_flutter/pages/Home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        cardColor: Colors.white,
        canvasColor: Colors.yellow,
        dialogBackgroundColor: Colors.yellow,
        colorScheme: ColorScheme.light(primary: Colors.black),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
      ),
    );
  } 
}
