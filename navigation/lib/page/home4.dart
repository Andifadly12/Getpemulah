import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:navigation/page/home1.dart';
import 'package:navigation/page/home3.dart';

class Home4pages extends StatelessWidget {
  const Home4pages({super.key});

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
          children: [
            Container(
              width: 250,
              child: ElevatedButton(
                  onPressed: () => Get.offAllNamed('/page-1'),
                  child: Center(
                    child: Text(
                      'kembali ke page awaal...',
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
