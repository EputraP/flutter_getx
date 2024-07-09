import 'package:flutter_getx/models/orang_obs_model.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  var orang = OrangObsModel(paramNama: "supri");

  void changeUpperCase() {
    orang.nama.value = orang.nama.value.toString().toUpperCase();
  }
}
