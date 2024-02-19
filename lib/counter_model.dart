import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/state_manager.dart';

class CounterModel extends Cubit<int> {
  CounterModel() : super(0);

  void increment() => emit(state + 1);
}