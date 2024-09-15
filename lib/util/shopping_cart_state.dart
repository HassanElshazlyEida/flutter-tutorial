import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/product.dart';
import 'package:collection/collection.dart';
class ShoppingCartState extends InheritedWidget {
  
  List<Product> products = [];

  Widget child;

  ShoppingCartState({super.key, required this.child}) : super( child: child);

  @override
  bool updateShouldNotify(ShoppingCartState oldWidget) {
    return !const IterableEquality().equals(products, oldWidget.products);
  }

  static ShoppingCartState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShoppingCartState>()!;
  }

  int get totalItems => products.length;
}