import 'package:fuluttergetx2/model/orang2.dart';
import 'package:get/get.dart';

class orang1Controller extends GetxController {
  var orgs = orang1(name: 'andi fadly', umur: 23).obs;
  void username() {
    orgs.update((val) {
      orgs.value.name = orgs.value.name.toString().toUpperCase();
    });
  }
}
