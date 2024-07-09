import 'package:get/get.dart';

class CountController extends GetxController {
  var count_val = 0.obs;
  var theme_val = false.obs;
  var count = 0;
  var count_id = 0;
  var count_without_id = 0;

  void increament() => count_val + 1;
  void decreament() => count_val - 1;
  void increament_builder() {
    count++;
    update();
  }

  void increament_builder_id() {
    count_id++;
    update(['joni']);
  }

  void changeTheme() => theme_val.value = !theme_val.value;
}
