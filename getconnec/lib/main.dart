import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnec/pages/haome_page.dart';
import 'package:getconnec/routes/app_pages.dart';

import 'controller/usersC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userC = Get.put(UsersC());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}
