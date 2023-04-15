import 'package:flutter/material.dart';

import 'package:get/get.dart';

class detail extends StatelessWidget {
  const detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('detail produc :${Get.parameters['id']}'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('ini adalah data ${Get.parameters['ukuran']}')],
        ),
      ),
    );
  }
}
