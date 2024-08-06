import 'package:flutter/material.dart';
import 'package:udemy_flutter/pages/ecommerce/cart_page.dart';
import 'package:udemy_flutter/pages/ecommerce/menu_page.dart';

import '../../util/bottom_nav_bar.dart';

class Shop extends StatefulWidget {
  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MenuPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Padding(
                padding:  EdgeInsets.only(left:12 ),
                child:  Icon(Icons.menu,color: Colors.black,),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          
          children: [
            DrawerHeader(child: Image.asset('lib/images/nike-logo.png',color:Colors.white),), 
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: ListTile(
                leading: const Icon(Icons.home,color: Colors.white),
                title: const Text('Home',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: ListTile(
                leading: const Icon(Icons.info,color: Colors.white),
                title: const Text('About',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
            // logout
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: ListTile(
                leading: const Icon(Icons.logout,color: Colors.white),
                title: const Text('Logout',style: TextStyle(color: Colors.white),),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),

          
          ],
        ),
      ),
    );
  }
}