import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items on sale

  final List _shopItems = [
    // [itemName, itemPrice, imagePath, Color]

    ["Avocado", "15.0", 'lib/images/avocado.png', Colors.green],
    ["Banana", "8.0", 'lib/images/banana.png', Colors.yellow],
    ["Chicken Leg", "10.0", 'lib/images/chickenLeg.png', Colors.blue],
    ["Water", "5.0", 'lib/images/water.png', Colors.brown],
  ];

  // List of cart items
  final List _cartItems = [];

  // getter method
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // get total price in the cart
  String calculateTotal() {
    double totaPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totaPrice += double.parse(_cartItems[i][1]);
    }
    return totaPrice.toStringAsFixed(2);
  }
}
