import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';

class CounterModel extends GetxController {
  var count = 0.obs;

  increment() => count++;

}