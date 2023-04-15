import 'package:dependency/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class nama extends StatelessWidget {
  nama({super.key});
  final d = Get.find<HomeController>(tag: 'text');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('kmujwo'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                decoration: InputDecoration(hintText: 'dkskds'),
                controller: d.texcs,
              ),
            )
          ],
        ),
      ),
    );
  }
}
