import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Buttom"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            color: Colors.amber,
          ));
          // showModalBottomSheet(
          //     context: context,
          //     builder: (context) {
          //       return Padding(
          //         padding: EdgeInsets.only(
          //             bottom: MediaQuery.of(context).viewInsets.bottom),
          //         child: Container(
          //             padding:
          //                 EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          //             color: Colors.amber,
          //             child: ListView(
          //               children: [
          //                 TextField(
          //                   decoration: InputDecoration(hintText: 'Submit+'),
          //                 ),
          //                 SizedBox(
          //                   height: 4,
          //                 ),
          //                 TextField(
          //                   decoration: InputDecoration(hintText: 'Submit+'),
          //                 ),
          //                 SizedBox(
          //                   height: 4,
          //                 ),
          //                 TextField(
          //                   decoration: InputDecoration(hintText: 'Submit+'),
          //                 ),
          //                 TextField(
          //                   decoration: InputDecoration(hintText: 'Submit+'),
          //                 ),
          //                 TextField(
          //                   decoration: InputDecoration(hintText: 'Submit+'),
          //                 )
          //               ],
          //             )),
          //       );
          //     });
        },
        child: Icon(Icons.add),
        tooltip: "Increwment",
      ),
    );
  }
}
