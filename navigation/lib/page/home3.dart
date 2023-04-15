import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/page/home1.dart';
import 'package:navigation/page/home4.dart';

class Homepages3 extends StatelessWidget {
  const Homepages3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Home Pages 3'),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(Home4pages());
                },
                child: Center(
                  child: Text('Lanjut ....'),
                ),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: Center(
                  child: Text('Kembali...'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
