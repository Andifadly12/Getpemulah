import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeControlller extends GetxController {
  final myds = TextEditingController();
  var count = 0;
  void add() {
    count++;
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
