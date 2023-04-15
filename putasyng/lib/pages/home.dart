import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});
  var count = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home pages'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Obx(() => Text('$count'))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.putAsync<SharedPreferences>(() async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('counter', 99);
          count.value = prefs.getInt('counter')!.toInt();
          return prefs;
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}
