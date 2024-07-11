import 'package:bindings/controllers/count_controller.dart';
import 'package:get/get.dart';

class CountBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountC());
  }
}
