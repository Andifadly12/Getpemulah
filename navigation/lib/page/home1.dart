import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/page/home2.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home page 1')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: ElevatedButton(
                  onPressed: () => Get.toNamed('/page-2'),
                  child: Center(
                    child: Text(
                      'Lanjut...',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
