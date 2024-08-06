import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/models/cart.dart';
import 'package:udemy_flutter/models/shoe.dart';

import '../../util/shoe_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
  
}

class _MenuPageState  extends State<MenuPage> {
  @override
  Widget build(BuildContext context){
    return  Consumer<Cart>(
      builder: (context, value, child) =>  Scaffold(
        backgroundColor: Colors.grey[300],
        body:   Padding(
          padding:  const EdgeInsets.all(15),
          child:  Column(
            children: [
                const TextField(
                decoration: InputDecoration(
      
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide.none, 
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    
                  ),
                  fillColor: Colors.white,
                  
                  filled: true,
                ),
      
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text('everyone flies.. some fly longer than others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]
                ),),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Hot Picks 🔥 ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                    ),
                    Text("View All",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Expanded(
      
                child: ListView.builder(
                  itemCount: value.getShoeShop.length,
      
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  Shoe shoe = value.getShoeShop[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: (){
                      value.addItemToCart(shoe);
                      showDialog(context: context, builder: (context){
                        return const  AlertDialog(
                          title:  Text('Successfully added !'),
                          content:  Text('Check your cart'),
                        
                        );
                      });
                    },
                  );
                })
              
              ),
               Padding(
                padding: const EdgeInsets.only(top:25,left: 25,right: 25),
                child: Divider(
                  color: Colors.grey[300],
                
                ),
              ),
      
            ]
          ),
        ),
      ),
    );
  }
}