import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/product.dart';
import 'package:udemy_flutter/pages/shopping_cart/cart_details.dart';
import 'package:udemy_flutter/util/shopping_cart_state.dart';

class ShoppingCartHome extends StatelessWidget {

  ShoppingCartHome({super.key});

  List<Product> products =  List.generate(20, (index) {
    return Product(
      name: 'Product $index',
      price: (index + 1) * 10.0,
    );
  });
  @override
  Widget build(BuildContext context) {
    ShoppingCartState cart = ShoppingCartState.of(context);
    return StatefulBuilder(
      builder: (context, setState){
        return Scaffold(
          appBar: AppBar(
            title: const Text('Shopping Cart'),
            backgroundColor: Colors.blue,
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 10,right: 15),
                child: badges.Badge(
                  badgeContent:  Text('${cart.products.length}',style: TextStyle(color: Colors.white),),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart,color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CartDetails()
                        )
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(

            itemCount: products.length,
            itemBuilder: (context, index){
              return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title:Row( 
                        children: [
                          Expanded(child: Text(products[index].name)),
                          Checkbox(value: products[index].isChecked,onChanged: (value){
                            setState(() {
                              products[index].isChecked = value!;
                              if(value){
                                cart.products.add(products[index]);
                              }else {
                                cart.products.remove(products[index]);
                              }
                            });
                          })
                      ]),
                        
                    subtitle: Text('\$${products[index].price}'),
                  ),
              );
            },
          )
        );
      }
    );
  }
}