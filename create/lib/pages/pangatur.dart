import 'package:create/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class pengaturPages extends StatelessWidget {
  const pengaturPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('halaman awal'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Kehalaman berikutnya'),
            Container(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomePages());
                  },
                  child: Center(
                    child: Text('Submit'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
