import 'package:bindings/routes/app_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed(AppName.countPage);
            },
            child: const Text("Next >>>")),
      ),
    );
  }
}
