import 'package:flutter/material.dart';

import 'package:fuluttergetx2/pages/home3.dart';
import 'package:fuluttergetx2/pages/home4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home4(),
    );
  }
}
