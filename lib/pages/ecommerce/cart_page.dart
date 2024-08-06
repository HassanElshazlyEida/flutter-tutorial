import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/models/cart.dart';
import 'package:udemy_flutter/models/shoe.dart';
import 'package:udemy_flutter/util/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
      builder: ((context, value, child) =>  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height:25,),
            Expanded(child: ListView.builder(
              itemCount: value.getCartItems.length,
              itemBuilder: (context, index){
                Shoe shoe = value.getCartItems[index];
                return CartItem(shoe: shoe);
              },  
            
            ))
          ],
        ),
        ))
      );
  }
}