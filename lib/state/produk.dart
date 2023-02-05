import 'dart:math';

import 'package:get/get.dart';

import '../models/item.dart';

class Produk extends GetxController {
  final RxList<Item> _items = List.generate(
      100,
      (index) => Item(
          id: index,
          nama: 'Produk $index',
          harga: Random().nextDouble() * 100,
          inWishList: false.obs)).obs;

  List<Item> get items {
    return [..._items];
  }

  List<Item> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }

  void addItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = true;
  }

  void removeItem(int id) {
    final int index = _items.indexWhere((item) => item.id == id);
    _items[index].inWishList.value = false;
  }
}
