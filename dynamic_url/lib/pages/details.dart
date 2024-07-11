import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product : ${Get.parameters["id"]}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product id ${Get.parameters} "),
            Text("Makanan: ${Get.parameters["makanan"]}"),
            Text("Minuman: ${Get.parameters["minuman"]}")
          ],
        ),
      ),
    );
  }
}
