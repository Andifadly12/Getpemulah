import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  void counter() {
    count++;
  }

  var texcs = TextEditingController();
}
