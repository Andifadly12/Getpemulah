import 'package:get/get.dart';
import 'package:navigation/page/home1.dart';
import 'package:navigation/page/home2.dart';
import 'package:navigation/page/home3.dart';
import 'package:navigation/page/home4.dart';
import 'package:navigation/route/name_route.dart';

class pagesRoute {
  static final pages = [
    GetPage(
      name: nameroute.page_satu,
      page: () => Home1(),
    ),
    GetPage(
      name: nameroute.page_dua,
      page: () => Home2(),
    ),
    GetPage(
      name: nameroute.page_tiga,
      page: () => Homepages3(),
    ),
    GetPage(
      name: nameroute.page_keempat,
      page: () => Home4pages(),
    )
  ];
}
