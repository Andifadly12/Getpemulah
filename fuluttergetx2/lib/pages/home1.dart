import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fuluttergetx2/model/case1.dart';
import 'package:get/get.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    // var count = 0.obs;
    // void add() {
    //   count++;
    // }
    var ca = case1(name: 'fadly', umur: 10).obs;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('flutter Gex')),
      ),
      body: Center(
          child: Obx(
        () => Text(
          'Date yang ke ${ca.value.name}',
          style: TextStyle(fontSize: 24),
        ),
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ca.update((val) {
          ca.value.name = ca.value.toString().toUpperCase();
        });
      }),
    );
  }
}
