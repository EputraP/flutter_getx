import 'package:flutter/material.dart';
import 'package:navigation_with_get/pages/page_empat.dart';
import 'package:get/get.dart';
import 'package:navigation_with_get/routes/route_name.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 3"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.pageEmpat);
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
