import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:study_states/item.dart';

class CartModel extends GetxController {
  var items = <Item>[].obs;

  int get totalPrice => items.length * 42;

  void add(Item item) {
    items.add(item);
  }

  void removeAll() {
    items.clear();
  }
}