import 'package:flutter/material.dart';

appBarHome() {
  return AppBar(
    actions: [
      Stack(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        ],
      )
    ],
  );
}
