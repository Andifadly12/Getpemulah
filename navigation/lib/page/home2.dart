import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/page/home1.dart';
import 'package:navigation/page/home3.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home pages ke 2'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.offNamed('/page-3'),
                child: Center(
                  child: Text('Lanjut....'),
                ),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: Center(
                  child: Text('kembali....'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
