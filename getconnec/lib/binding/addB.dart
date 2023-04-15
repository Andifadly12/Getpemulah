import 'package:get/get.dart';

import '../controller/addC.dart';

class AddUserB implements Bindings {
  @override
  void dependencies() {
    Get.put(AddC());
  }
}
