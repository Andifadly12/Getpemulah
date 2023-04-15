import 'package:fuluttergetx2/model/orang.dart';
import 'package:get/get.dart';

class orangController extends GetxController {
  var org = orang();

  void identitasn() {
    org.name.value.toString().toUpperCase();
  }
}
