import 'dart:ffi';

import 'package:create/controller/homeController.dart';
import 'package:create/pages/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});
  final xc = Get.put(HomeControlller(), tag: 'fda');
  final cm = Get.create(() => HomeControlller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('dependensy create'),
          ),
        ),
        body: Center(
          child: Column(
            children: [text(), text(), text()],
          ),
        ),
        floatingActionButton:
            CircleAvatar(child: Obx(() => Text('${xc.hasil}'))));
  }
}
