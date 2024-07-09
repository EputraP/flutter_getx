import 'package:get/get.dart';

class OrangObsModel {
  var nama = 'Bagong'.obs;
  var umur = '12'.obs;
  OrangObsModel({String? paramNama, String? paramUmur}) {
    nama.value = paramNama ?? nama.value;
    umur.value = paramUmur ?? umur.value;
  }
}
