import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:study_states/item.dart';

class CartModel extends Cubit<List<Item>> {
  CartModel() : super([]);

  var items = <Item>[].obs;

  int get totalPrice => items.length * 42;

  void add(Item item) {
    items.add(item);
    emit(items);
  }

  void removeAll() {
    items.clear();
    emit(items);
  }
}