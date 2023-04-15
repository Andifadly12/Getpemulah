import 'package:dependency/controller/homeController.dart';
import 'package:dependency/pages/category.dart';
import 'package:dependency/pages/latihan.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});
  final c = Get.put(
    HomeController(),
    tag: 'fadly',
  );
  final d = Get.put(HomeController(), tag: 'text', permanent: true);
  final a = Get.lazyPut(() => HomeController(), tag: 'fa', fenix: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('dempendecy injek tion'),
      )),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Obx(() => Text(
      //             '${c.count}',
      //             style: TextStyle(fontSize: 25),
      //           ))
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     c.counter();
      //   },
      //   child: Icon(Icons.add),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "pergi kehalaman category",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => Latihan());
                  },
                  child: Center(
                    child: Text('silahkan tekan'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
