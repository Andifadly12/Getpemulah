import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:navigation/page/home1.dart';
import 'package:navigation/route/page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Home1(), getPages: pagesRoute.pages);
  }
}
