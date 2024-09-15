import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:udemy_flutter/Riverpod/models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  
  @override
  Set<Product> build() {
    return  {
        
    };
  }
  void addProduct(Product product) {
    state = {...state, product};
  }
  void removeProduct(Product product) {
    state = state.where((element) => element.id != product.id).toSet();
  }
}
