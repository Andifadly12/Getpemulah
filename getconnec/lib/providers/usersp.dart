import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url =
      'https://getconect-project-default-rtdb.asia-southeast1.firebasedatabase.app/';
  //Sinmpan data
  Future<Response> postData(String name, String email, String phone) {
    final body = jsonEncode({"name": name, "email": email, "phone": phone});
    return post(url + 'users.json', body);
  }

  //menghapus data
  Future<Response> Deletedata(String id) {
    return delete(url + "users/$id.json");
  }

  //mengedit data
  Future<Response> editdata(
      String id, String name, String email, String phone) {
    final body = jsonEncode({
      "name": name,
      "email": email,
      "phone": phone,
    });
    return patch(url + "users/$id.json", body);
  }
}
