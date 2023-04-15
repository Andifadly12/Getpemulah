import 'package:get/get.dart';

import '../controller/profileC.dart';

class ProfileB implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileC());
  }
}
