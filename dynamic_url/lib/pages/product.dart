import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All PRODUCTS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => {Get.toNamed("/product1")},
              child: const Text("Product 1"),
            ),
            ElevatedButton(
              onPressed: () => {Get.toNamed("/product2")},
              child: const Text("Product 2"),
            ),
            ElevatedButton(
              onPressed: () => {Get.toNamed("/product3")},
              child: const Text("Product 3"),
            ),
          ],
        ),
      ),
    );
  }
}
