import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/shoe.dart';

class Cart  extends ChangeNotifier { 
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/nike-2.jpg',
      price: 120.0
    ),
    Shoe(
      name: 'Bag air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/bag.jpg',
      price: 150.0
    ),
    Shoe(
      name: 'Football air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/football.jpg',
      price: 180.0
    ),
    Shoe(
      name: 'Nike air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/nike-3.jpg',
      price: 225.0
    ),
    Shoe(
      name: 'Nike air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/nike-4.jpg',
      price: 530.0
    ),
     Shoe(
      name: 'Nike air Max',
      description: 'The Nike Air Max 90 stays true to its OG running roots',
      image: 'lib/images/nike-5.jpg',
      price: 530.0
    )
  ];

  List<Shoe> cartItems = [];

  List<Shoe> get getShoeShop => shoeShop;
  List<Shoe> get getCartItems => cartItems; 

  void addItemToCart(Shoe shoe){
    cartItems.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    cartItems.remove(shoe);
    notifyListeners();
  }

}