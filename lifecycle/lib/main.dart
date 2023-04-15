import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifecycle/oteherpage.dart';
import 'package:lifecycle/pages/home1.dart';
import 'package:lifecycle/pages/home2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home1(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var coun = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('life cycle'),
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => oteherpage())),
                icon: Icon(Icons.refresh))
          ],
        ),
        body: Column(
          children: [
            Center(
              child: lifecycle(coun: coun),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    coun++;
                  });
                },
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class lifecycle extends StatefulWidget {
  final int coun;
  lifecycle({super.key, required this.coun});

  @override
  State<lifecycle> createState() => _lifecycleState();
}

class _lifecycleState extends State<lifecycle> {
  @override
  void initState() {
    // TODO: implement initState
    print('inistate');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant lifecycle oldWidget) {
    // TODO: implement didUpdateWidget
    print('${oldWidget} diupdate widgade');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('didchangeDependesi');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('${widget.coun}')]);
  }
}
// class Home extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         routes: <String, WidgetBuilder>{'/': (context) => oteherpage()});
//   }
// }
