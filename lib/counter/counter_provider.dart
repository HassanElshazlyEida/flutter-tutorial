import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  int counter = 0 ; 
  Widget child;

  CounterProvider({super.key, required this.child}):super(child: child);

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }
  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }
}