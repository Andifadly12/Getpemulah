import 'package:flutter/material.dart';
import 'package:get/get.dart';

class produc extends StatelessWidget {
  const produc({super.key});

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
                onPressed: () =>
                    Get.toNamed('/produc-dedail', arguments: 'fadly'),
                child: Center(
                    child: Text(
                  'Peroduc 1',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                )),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () =>
                    Get.toNamed('/produc-dedail/2/?name=fadly&ukuran=danfi'),
                child: Center(
                    child: Text(
                  'Peroduc 2',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                )),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () => Get.toNamed('/produc-dedail'),
                child: Center(
                    child: Text(
                  'Peroduc 3',
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
