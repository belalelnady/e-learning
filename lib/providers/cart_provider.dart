import 'package:flutter/foundation.dart';
import '../models/cart_model.dart';

class CartProvider with ChangeNotifier {
  // item map with <id , cart item> {1 : cartItem1 , 22 :cartItem2}
  final Map<String, CartModel> _cartItems = {};

  Map<String, CartModel> get cartItems {
    return {..._cartItems};
  }

  double get totalPrice {
    double total = 0.0;
    _cartItems.forEach((key, value) {
      total += value.price;
    });
    return total;
  }

  int getItemCount() {
    return _cartItems.length;
  }

  void removeFromCart(productId) {
    _cartItems.remove(productId);
    notifyListeners();
  }

  void addToCart(
    String productId,
    String productTitle,
    String instructorName,
    String image,
    double productPrice,
    double rating,
  ) {
    if (!_cartItems.containsKey(productId)) {
      // if the cart doesn't have item with that id  add new cart item
      _cartItems.putIfAbsent(
          productId,
          () => CartModel(
                id: DateTime.now().toString(),
                instructorName: instructorName,
                title: productTitle,
                image: image,
                rating: rating,
                price: productPrice,
              ));
      notifyListeners();
    }
  }
}
