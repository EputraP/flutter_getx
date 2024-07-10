import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_with_get/pages/page_lima.dart';
import 'package:navigation_with_get/routes/route_name.dart';

class PageEmpat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 4"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(RoutesName.pageLima);
              },
              child: const Text("Next >> "),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("<< Back "),
            )
          ],
        ),
      ),
    );
  }
}
