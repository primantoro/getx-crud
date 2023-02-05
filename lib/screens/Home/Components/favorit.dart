import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state/produk.dart';
import '../../WishList/wishlist_screen.dart';

class MyFavorite extends StatelessWidget {
  final Produk _p = Get.put(Produk());
  MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300,
        height: 80,
        color: Colors.red,
        alignment: Alignment.center,
        child: Obx(() => Text(
              'Wish List: ${_p.wishListItems.length}',
              style: const TextStyle(fontSize: 28, color: Colors.white),
            )),
      ),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => WishListScreen())),
    );
  }
}
