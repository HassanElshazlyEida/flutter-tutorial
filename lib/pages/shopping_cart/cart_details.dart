import 'package:flutter/material.dart';
import 'package:udemy_flutter/util/shopping_cart_state.dart';

class CartDetails  extends StatelessWidget {
  const CartDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingCartState cart = ShoppingCartState.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Details'),
      ),
      body:  Center(
        child: Text('${cart.products.length} Selected Products'),
      ),
    );
  }
}