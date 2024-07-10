import 'package:get/get.dart';

class ChangedCounterController extends GetxController {
  var count = 0.obs;
  var count2 = 1.obs;

  void add() => count++;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    /// Called every time `count` changes.
    ever(count, (_) => print("ever"));

    /// Called every time any of variable on list changes.
    everAll([count, count2], (_) => print("everAll"));
    // Called only first time the variable count is changed
    once(count, (_) => print("once"));
    // Called every time the user stops typing for 1 second
    debounce(count, (_) => print("debounce"));
    // Ignore all changes within 1 second.
    interval(count, (_) => print("interval"));
  }
}
