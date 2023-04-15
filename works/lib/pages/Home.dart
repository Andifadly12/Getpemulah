import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:works/controller/home_controller.dart';

class Home extends StatelessWidget {
  final c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Works'),
        ),
        actions: [
          IconButton(onPressed: () => c.refres(), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Akan terjadi : ${c.count}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              onChanged: (_) => c.add(),
              decoration: InputDecoration(
                  hintText: 'data', border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}
