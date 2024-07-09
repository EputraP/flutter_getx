import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/count_controller.dart';
import 'package:flutter_getx/controllers/orang_controller.dart';
import 'package:flutter_getx/controllers/orang_model_obs_controller.dart';
import 'package:flutter_getx/models/orang_model.dart';
import 'package:flutter_getx/models/orang_obs_model.dart';
import 'package:get/get.dart';
import 'package:string_validator/string_validator.dart';

void main() {
  runApp(MyApp());
}

var o = Orang("Greg", "").obs;
var o2 = OrangObsModel();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final counterC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.theme_val.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final c = Get.find<CountController>();
  final counterB = Get.put(OrangController());
  final counterA = Get.put(OrangModelObsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Column(
                children: [
                  Text("count val: ${c.count_val}"),
                  Text(
                      "orang data=> name: ${o.value.nama}, umur: ${o.value.umur}"),
                  Text("orang data=> name: ${o2.nama}, umur: ${o2.umur}"),
                  Text(
                      "orang data 2=> name: ${counterB.orang.nama}, umur: ${counterB.orang.umur}"),
                  Text(
                      "orang data 3=> name: ${counterA.orang.value.nama}, umur: ${counterA.orang.value.umur}"),
                ],
              ),
            ),
            GetX<CountController>(
              init: CountController(),
              builder: (controller) =>
                  Text("count_val1: ${controller.count_val}"),
            ),
            //id only be able on GetBuilder
            GetBuilder<CountController>(
              init: CountController(),
              builder: (controller) => Text("count_val2: ${controller.count}"),
            ),
            GetBuilder<CountController>(
              id: 'joni',
              init: CountController(),
              builder: (controller) =>
                  Text("count_val3: ${controller.count_id}"),
            ),
            GetBuilder<CountController>(
              init: CountController(),
              builder: (controller) =>
                  Text("count_val4: ${controller.count_id}"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        c.changeTheme(); // theme ini kan ngerubah state MyApp (atas), jadi ketika ini ganti maka yang di home page bakal ke run lagi
        c.increament();
        o2.nama.value = "juned";
        o.update((o) {
          o?.nama = isUppercase(o.nama.toString())
              ? o.nama.toString().toLowerCase()
              : o.nama.toString().toUpperCase();
        });
        counterB.changeUpperCase();
        counterA.changeUpperCase();
        Get.find<CountController>().increament_builder();
        c.increament_builder();
        Get.find<CountController>().increament();
        Get.find<CountController>().increament_builder_id();
      }),
    );
  }
}
