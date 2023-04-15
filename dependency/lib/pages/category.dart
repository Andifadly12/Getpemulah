import 'package:dependency/controller/homeController.dart';
import 'package:dependency/pages/nama.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cate extends StatelessWidget {
  Cate({super.key});
  final HomeController c = Get.find(tag: 'fadly');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Halaman category'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${c.count}',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () => Get.to(() => nama()), child: Text('dsdssk'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.counter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
