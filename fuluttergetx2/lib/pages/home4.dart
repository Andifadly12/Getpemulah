import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fuluttergetx2/controller/orang2_Controller.dart';
import 'package:get/get.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Get X'),
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(
              init: orang2Controller(),
              builder: (controller) => Text(
                    'ini angka ${controller.conter}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  )),
          ElevatedButton(
              onPressed: () {
                Get.find<orang2Controller>().increnment();
              },
              child: Center(
                child: Text('Submit'),
              ))
        ],
      )),
    );
  }
}
