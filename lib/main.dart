import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/Getx/view/getx_home.dart';
import 'package:udemy_flutter/Riverpod/shopping_cart_riverpod_home.dart';
import 'package:udemy_flutter/counter/bloc/simple_bloc_delegate.dart';
import 'package:udemy_flutter/models/cart.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy_flutter/pages/Home.dart';
import 'package:udemy_flutter/post_bloc_widget.dart';
import 'package:udemy_flutter/provider_state_read.dart';
import 'package:udemy_flutter/shopping_cart_home.dart';
import 'package:udemy_flutter/state_management.dart';
import 'package:udemy_flutter/pages/ecommerce/intro_page.dart';
import 'package:udemy_flutter/state_management_bloc.dart';
import 'package:udemy_flutter/state_management_provider.dart';
import 'package:udemy_flutter/util/shopping_cart_state.dart';


void main()  {

  // await Hive.initFlutter();
  // var box = await Hive.openBox('db');

  // Business Logic Component
  // Bloc.observer = SimpleBlocDelegate();
  runApp(const GetxApp());

  
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

// class ECommerce extends StatelessWidget {
  
//  @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Cart(),
//       builder: (context, child) => const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: IntroPage(),
//       ),
//     );
//   } 
// }

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
class ShoppingCartRiverpod extends StatelessWidget {
  const ShoppingCartRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  ShoppingCartRiverpodHome(),
        debugShowCheckedModeBanner: false,
      );
  }
}

class GetxApp extends StatelessWidget {
  const GetxApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: GetXHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}