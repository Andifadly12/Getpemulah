import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro/controller/counter_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controllercount c = Get.find<controllercount>();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('intro Getx')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Single Data ke ${c.count}',
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.changthem();
        },
      ),
    );
  }
}
