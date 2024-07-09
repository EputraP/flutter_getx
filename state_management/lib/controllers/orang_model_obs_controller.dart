import 'package:flutter_getx/models/orang_model.dart';
import 'package:get/get.dart';

class OrangModelObsController extends GetxController {
  var orang = Orang("bandit", "").obs;

  void changeUpperCase() {
    orang.update((_) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }
}
