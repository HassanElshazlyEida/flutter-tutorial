import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter/Riverpod/cart_screen.dart';
import 'package:udemy_flutter/Riverpod/providers/cart_provider.dart';
import 'package:udemy_flutter/Riverpod/providers/product_provider.dart';
import 'package:udemy_flutter/models/product.dart';
import 'package:udemy_flutter/pages/shopping_cart/cart_details.dart';
import 'package:udemy_flutter/util/shopping_cart_state.dart';

class ShoppingCartRiverpodHome extends ConsumerWidget {

  ShoppingCartRiverpodHome({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final products = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);

    return StatefulBuilder(
      builder: (context, setState){
        return Scaffold(  
          appBar: AppBar(
            title: const Text('Shopping Cart'),
            backgroundColor: Colors.orange,
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 10,right: 15),
                child: badges.Badge(
                  badgeContent:  Text('${cartProducts.length}',style: const TextStyle(color: Colors.white),),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart,color: Colors.white,),
                    onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return const CartScreen();
                          }));
                    },
                  ),
                ),
              )
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9,
                ),
                itemBuilder:(context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.blueGrey.withOpacity(0.05),
                    child: Column(
                      children: [
                        Image.asset(products[index].image, width: 60, height: 60),
                        Text(products[index].title),
                        Text('£${products[index].price}'),
                         if (cartProducts.contains(allProducts[index]))
                          TextButton(
                            onPressed: () {
                              ref.read(cartNotifierProvider.notifier)
                                .removeProduct(allProducts[index]);
                            },
                            child: const Text('Remove'),
                          ),

                        if (!cartProducts.contains(allProducts[index]))
                          TextButton(
                            onPressed: () {
                              ref.read(cartNotifierProvider.notifier)
                                .addProduct(allProducts[index]);
                            },
                            child: const Text('Add to Cart'),
                          ),
                      ]
                    )
                  );
                },
              ),
          )
        );
      }
    );
  }
}