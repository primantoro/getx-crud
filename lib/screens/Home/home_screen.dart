import 'package:flutter/material.dart';

import '../WishList/wishlist_screen.dart';
import 'Components/add_button.dart';
import 'Components/list.dart';

class HomeScreen extends StatelessWidget {
  // final Produk _p = Get.put(Produk());
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WishListScreen())),
                  icon: const Icon(Icons.favorite_border)),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          // const SizedBox(
          //   height: 20,
          // ),
          // MyFavorite(),
          const SizedBox(
            height: 20,
          ),
          MyList()
        ],
      ),
      floatingActionButton: addButton(),
    );
  }
}
