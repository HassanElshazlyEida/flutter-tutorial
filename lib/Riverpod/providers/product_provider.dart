

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_flutter/Riverpod/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_provider.g.dart';

 List<Product> allProducts =  [
  Product(
    id: '1',
    title : 'Product 1',
    price: 10.0,
    image: 'lib/images/bag.jpg',
  ),
  Product(
    id: '2',
    title : 'Product 2',
    price: 20.0,
    image: 'lib/images/football.jpg',
  ),
  Product(
    id: '3',
    title : 'Product 3',
    price: 30.0,
    image: 'lib/images/nike-2.jpg',
  ),
  Product(
    id: '4',
    title : 'Product 4',
    price: 40.0,
    image: 'lib/images/nike-3.jpg',
  ),
  Product(
    id: '5',
    title : 'Product 5',
    price: 50.0,
    image: 'lib/images/nike-4.jpg',
  ),
  Product(
    id: '6',
    title : 'Product 6',
    price: 60.0,
    image: 'lib/images/nike-5.jpg',
  ),


];

// final productsProvider = Provider((ref) => allProducts);

// final reducedProductsProvider = Provider((ref) {
//   // final products = ref.watch(productsProvider);
//   return allProducts.where((product) => product.price < 30).toList();
// });

@riverpod 
List<Product> products(ref){
  return allProducts;
}
@riverpod 
List<Product> reducedProducts(ref){
  return allProducts.where((product) => product.price < 30).toList();

}
