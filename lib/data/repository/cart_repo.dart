import 'dart:convert';

import 'package:food_delivery/util/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});
  List<String> cart = [];

  void addToCartList(List<CartModel> cartList) {
    cart = [];
    /* 
    convert object to string bcz sharedpreference only accepts sting 
    */

    cartList.forEach((element) => cart.add(jsonEncode(element)));

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    print(sharedPreferences.getStringList(AppConstants.CART_LIST));
  }

  List<CartModel> getCartList() {
    List<String> carts = [];
    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
    }
    List<CartModel> cartList = [];
/* 
List <object> list - [
  "object1",
  "object2",
  "object3",
]
*/

    carts.forEach(
        (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));
    return cartList;
  }
}
