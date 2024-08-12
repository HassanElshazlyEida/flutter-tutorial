import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/models/cart.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy_flutter/pages/Home.dart';
import 'package:udemy_flutter/shopping_cart_home.dart';
import 'package:udemy_flutter/state_management.dart';
import 'package:udemy_flutter/pages/ecommerce/intro_page.dart';
import 'package:udemy_flutter/util/shopping_cart_state.dart';


void main() async {

  // await Hive.initFlutter();
  // var box = await Hive.openBox('db');

  runApp(ShoppingCart());

  
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
        colorScheme: const ColorScheme.light(primary: Colors.black),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
      ),
    );
  } 
}

class ECommerce extends StatelessWidget {
  
 @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  } 
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState){
        return  ShoppingCartState(
          child: MaterialApp(
            home:  ShoppingCartHome(),
            debugShowCheckedModeBanner: false,
          ),
        );
      }
    );
  }
}