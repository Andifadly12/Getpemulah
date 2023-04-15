import 'package:get/get.dart';

class homeController extends GetxController {
  var conter = 0;
  void add() {
    conter++;
    update(['fadly']);
  }
}
