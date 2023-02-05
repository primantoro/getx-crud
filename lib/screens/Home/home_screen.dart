import 'package:flutter/material.dart';

import 'Components/add_button.dart';
import 'Components/appbar_home.dart';
import 'Components/favorit.dart';
import 'Components/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MyFavorite(),
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
