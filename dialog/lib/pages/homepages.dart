import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Dialog'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data'),
            FloatingActionButton(
              onPressed: () {
                Get.defaultDialog(
                  barrierDismissible: false,
                  title: 'pilih',
                  middleText: 'sjsdssdaiesdi',
                  confirm: Text('termah'),
                  textCancel: 'slah',
                  onCancel: () => Get.back(),
                );
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: Text('nasddd'),
                //         content: Text('fdfdfdsds'),
                //       );
                //     });
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
