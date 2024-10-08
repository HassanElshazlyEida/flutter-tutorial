import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {

  Shoe shoe;  
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,required this.onTap});
  
 
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.only(left:25),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:Image.asset(shoe.image,fit: BoxFit.cover,)
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(shoe.description, textAlign: TextAlign.center
                   ,style: TextStyle(
                    color: Colors.grey[600],
                  )),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left:15.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(shoe.name,style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          )),
                          const SizedBox(height: 5,),
                          Text('\$${shoe.price}',style: const TextStyle(
                            color : Colors.grey,
                            fontSize: 15
                          )),
                        ],
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)
                            ),
                          ),
                          child: const Icon(Icons.add_shopping_cart,color: Colors.white,),
                        ),
                      )
                    ]
                                   ),
                 )
                
            ],
        ),
    );
  }
}