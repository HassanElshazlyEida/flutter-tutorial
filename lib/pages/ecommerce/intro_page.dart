import 'package:flutter/material.dart';
import 'package:udemy_flutter/pages/ecommerce/shop.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:25,left: 25,right: 25),
                  child: Image.asset(
                    'lib/images/nike-logo.png',
                    height: 240,),
                ),
                const SizedBox(height: 24,),
                const Text("Just Do It",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                ),
                  const SizedBox(height: 24,),
                const Text('Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,),
                const SizedBox(height: 48,),
          
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Shop())
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ), 
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child:  Text('Show now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      )
    );
  }
}