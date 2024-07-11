import 'package:dynamic_url/routes/app_route_names.dart';
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
              onPressed: () => {
                Get.toNamed(
                    "${AppRouteNames.product}/1/Saputri?makanan=Bk so&minuman=po ca ri")
              },
              child: const Text("Product 1"),
            ),
            ElevatedButton(
              onPressed: () => {
                Get.toNamed(
                    "${AppRouteNames.product}/2/Saputra?makanan= So  To&minuman=teh")
              },
              child: const Text("Product 2"),
            ),
            ElevatedButton(
              onPressed: () => {
                Get.toNamed(
                    "${AppRouteNames.product}/3/Suprapto?makanan= Mie Bihun&minuman=es buah")
              },
              child: const Text("Product 3"),
            ),
          ],
        ),
      ),
    );
  }
}
