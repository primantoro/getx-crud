import 'package:get/get.dart';

class Item {
  int id;
  String nama;
  double harga;
  RxBool inWishList;
  Item(
      {required this.id,
      required this.nama,
      required this.harga,
      required this.inWishList});
}
