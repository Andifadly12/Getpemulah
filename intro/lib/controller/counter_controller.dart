import 'package:get/get.dart';

class controllercount extends GetxController {
  var count = 0.obs;
  var thm = false.obs;
  void increment() => count++;
  void changthem() => thm.value = !thm.value;
}
