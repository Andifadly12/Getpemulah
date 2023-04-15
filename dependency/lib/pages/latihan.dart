import 'package:dependency/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Latihan extends StatelessWidget {
  Latihan({super.key});
  final s = Get.find<HomeController>(tag: 'fa');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('dshd')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${s.count}')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          s.counter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
