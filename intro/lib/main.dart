import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro/controller/counter_controller.dart';
import 'package:intro/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final controllercount theme = Get.put(controllercount());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: theme.thm.value ? ThemeData.dark() : ThemeData.light(),
          home: Home(),
        ));
  }
}
