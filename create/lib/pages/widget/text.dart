import 'package:create/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class text extends StatelessWidget {
  text({
    super.key,
  });
  final Cant = Get.find<HomeControlller>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${Cant.conter}',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text('kurang'),
                      )),
                ),
                Container(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          Cant.conteree();
                          Get.find<HomeControlller>(tag: 'fda').hasil.value++;
                        },
                        child: Center(
                          child: Text('Tambah'),
                        )))
              ],
            )
          ],
        ));
  }
}
