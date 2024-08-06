import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/models/cart.dart';
import 'package:udemy_flutter/models/shoe.dart';


class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: ((context, value, child) =>  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price.toString()),
        leading: Image.asset(widget.shoe.image),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: (){
            value.removeItemFromCart(widget.shoe);
             showDialog(context: context, builder: (context){
                  return const  AlertDialog(
                    
                    title: Text('Item removed from cart'),
                    content: Text('Item removed from cart'),
                  
                  );
              });
          }
        ),
      ),
    ))
    );
  }
}