import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state/produk.dart';

class MyList extends StatelessWidget {
  final Produk _p = Get.put(Produk());
  MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: _p.items.length,
            itemBuilder: (context, index) {
              final produk = _p.items[index];
              return Card(
                key: ValueKey(produk.id),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                color: Colors.amber.shade300,
                child: ListTile(
                  title: Text(produk.nama),
                  subtitle: Text("\$${produk.harga.toStringAsFixed(2)}"),
                  trailing: Obx(() => IconButton(
                        onPressed: () {
                          if (produk.inWishList.value == false) {
                            _p.addItem(produk.id);
                          } else {
                            _p.removeItem(produk.id);
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: produk.inWishList.value == false
                              ? Colors.white
                              : Colors.red,
                        ),
                      )),
                ),
              );
            }));
  }
}
