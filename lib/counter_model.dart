import 'package:flutter_bloc/flutter_bloc.dart';

class CounterModel extends Cubit<int> {
  CounterModel() : super(0);

  void increment() => emit(state + 1);
}