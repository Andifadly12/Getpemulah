import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniqei/controller/home_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = Get.put(homeController());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Get x whit unique'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<homeController>(
              id: 'fadly',
              builder: (controller) =>
                  Text('data kamu adalah ${controller.conter}'),
            ),
            Container(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    c.add();
                  },
                  child: Center(
                    child: Text('Submit'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
