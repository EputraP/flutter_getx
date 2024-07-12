import 'package:get/get.dart';
import 'dart:convert';

class UserProviders extends GetConnect {
  final url =
      "https://getconnect-372aa-default-rtdb.asia-southeast1.firebasedatabase.app/";

  Future<Response> postUser(
      String id, String name, String email, String phone) {
    final body =
        json.encode({"id": id, "name": name, "email": email, "phone": phone});
    return post(url + '/users.json', body);
  }
}
