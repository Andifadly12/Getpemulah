import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifecycle/controller/home_controller.dart';
import 'package:lifecycle/main.dart';

class Home2 extends StatelessWidget {
  Home2({super.key});
  final count = Get.put(homeControlller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Getz whit flutter')),
        actions: [
          IconButton(onPressed: () => Get.to(Home()), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<homeControlller>(
              initState: (_) => print('init state'),
              didChangeDependencies: (_) => print('changes dependensi'),
              didUpdateWidget: (oldWidget, state) =>
                  print('iniadalah : $oldWidget dan selalu tetap begitu'),
              dispose: (_) => print('ini akan pindah halaman'),
              builder: (controller) => Text(
                'Data angka yang ke ${controller.count}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {
                    count.add();
                  },
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 25),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
