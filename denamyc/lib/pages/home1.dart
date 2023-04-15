import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Page denamyc'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.offNamed('/produc'),
                child: Center(
                    child: Text(
                  'Peroduc',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
