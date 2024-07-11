import 'package:bindings/controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountPage extends StatelessWidget {
  CountPage({super.key});

  final countC = Get.find<CountC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
      ),
      body: Center(
        child: Obx(() => Text('${countC.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
