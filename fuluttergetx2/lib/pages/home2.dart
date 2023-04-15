// import 'package:flutter/material.dart';
// import 'package:fuluttergetx2/model/orang.dart';
// import 'package:get/get.dart';

// class Home2 extends StatelessWidget {
//   final org = orang(name: 'fadly', umur: 23).obs;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('latihan getx')),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(
//               () => Text('data ${org.value.name}'),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 250,
//               child: ElevatedButton(
//                   onPressed: () {
//                     org.update((val) {
//                       org.value.name = org.value.name.toString().toUpperCase();
//                     });
//                   },
//                   child: Center(
//                     child: Text('Submit'),
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
