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
      body:  Column(
        children: [
              Text('Total Items : ${cart.totalItems }'),
              Expanded(
              child: ListView.builder(

              itemCount: cart.totalItems,
              itemBuilder: (context, index){
                return Card(
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title:Row( 
                          children: [
                            Expanded(child: Text(cart.products[index].name)),
                        ]),
                          
                      subtitle: Text('\$${cart.products[index].price}'),
                    ),
                );
              },
            ),
            ),
          
    
            ]

      ),
    );
  }
}