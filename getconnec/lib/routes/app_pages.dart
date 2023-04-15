import 'package:get/get.dart';
import 'package:getconnec/pages/haome_page.dart';

import '../binding/addB.dart';
import '../binding/profile.dart';
import './route_name.dart';

import '../pages/profile_page.dart';
import '../pages/add_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
      binding: ProfileB(),
    ),
    GetPage(
      name: RouteName.add,
      page: () => AddPage(),
      binding: AddUserB(),
    ),
  ];
}
