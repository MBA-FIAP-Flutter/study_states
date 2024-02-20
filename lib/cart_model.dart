import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_states/item.dart';

class CartModel extends Cubit<List<Item>> {
  CartModel() : super([]);

  int get totalPrice => state.length * 42;

  void add(Item item){
    List<Item> list = state.toList();
    list.add(item);
    emit(list);
  }

  void removeAll(){
    emit([]);
  }
}