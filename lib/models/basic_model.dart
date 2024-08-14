import 'package:flutter/material.dart';

class BasicModel extends ChangeNotifier {
  String name;
  int age;

  BasicModel(this.name, this.age);

  void changeAge() {
    age++;
    notifyListeners();
  }

}