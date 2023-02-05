import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state/produk.dart';

class WishListScreen extends StatelessWidget {
  final Produk _p = Get.find<Produk>();
  WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Wish List'),
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: _p.wishListItems.length,
            itemBuilder: (context, index) {
              final item = _p.wishListItems[index];
              return Card(
                key: ValueKey(item.id),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                color: Colors.blue[200],
                child: ListTile(
                  title: Text(item.nama),
                  subtitle: Text(item.harga.toStringAsFixed(2)),
                  // This button use to remove )the item from wish list
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      item.inWishList.value = false;
                      _p.removeItem(item.id);
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }
}
