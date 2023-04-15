// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lifecycle/controller/home1_controller.dart';

// class Homepages extends StatefulWidget {
//   const Homepages({super.key});

//   @override
//   State<Homepages> createState() => _HomepagesState();
// }

// class _HomepagesState extends State<Homepages> {
//   final MyCount = Get.put(homeControlller());
//   @override
//   void initState() {
//     // TODO: implement initState
//     print('initstate');
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     print('didchangdependenci');
//     super.didChangeDependencies();
//   }

//   @override
//   void didUpdateWidget(covariant Homepages oldWidget) {
//     print('ini adalah: $oldWidget, yang sudah di update');
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     print('inin adalah post yang harus di lestarikan');
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('gets obs and controller'),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Text('data ini ${MyCount.count}'),
//             ),
//             Container(
//               width: 250,
//               child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       MyCount.add();
//                     });
//                   },
//                   child: Center(
//                     child: Text("Submit"),
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifecycle/controller/home_controller.dart';
import 'package:lifecycle/pages/home2.dart';

class Home1 extends StatelessWidget {
  Home1({super.key});
  final myC = Get.put(homeControlller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Get x'),
        ),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => Home2()), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: myC.myds,
          )
        ],
      )),
    );
  }
}
