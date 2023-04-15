import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  void add() {
    count++;
  }

  void refres() {
    count.value = 0;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    ever(count, (callback) => print('kamu maunya apa: $count'));

    once(count, (callback) => print('dimana kau $count'));

    // debounce(count, (callback) => print('dubonce $count'),
    //     time: Duration(seconds: 2));
    interval(count, (callback) => print('interval $count'),
        time: Duration(seconds: 1));
  }
}
