import 'package:denamyc/pages/detail.dart';
import 'package:denamyc/pages/home1.dart';
import 'package:denamyc/pages/produc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home1(),
      getPages: [
        GetPage(name: '/home', page: () => Home1()),
        GetPage(
          name: '/produc',
          page: () => produc(),
        ),
        GetPage(name: '/produc-dedail/:id?', page: () => detail())
      ],
    );
  }
}
