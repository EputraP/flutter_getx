import 'package:flutter/material.dart';
import 'package:navigation_with_get/pages/page_tiga.dart';
import 'package:get/get.dart';
import 'package:navigation_with_get/routes/route_name.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 2"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.pageTiga);
              },
              child: const Text("Next >> "),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "dari screen page 2");
              },
              child: const Text("<< Back "),
            ),
            Text("${Get.arguments}")
          ],
        ),
      ),
    );
  }
}
