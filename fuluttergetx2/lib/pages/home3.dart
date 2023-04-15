import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fuluttergetx2/controller/orang1_controller.dart';
import 'package:fuluttergetx2/model/orang2.dart';
import 'package:get/get.dart';

class Home3 extends StatelessWidget {
  final org = Get.put(orang1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('study case getx')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'perkanelkan Nama saya ${org.orgs.value.name}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Container(
            width: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
            child: ElevatedButton(
                onPressed: () {
                  org.username();
                },
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                )),
          )
        ],
      )),
    );
  }
}
