import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_with_get/routes/route_name.dart';
import 'page_dua.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 1"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                var data = await Get.toNamed(RoutesName.pageDua,
                    arguments: "message dari test 1");
                print(data);
              },
              child: const Text("Next >> "),
            )
          ],
        ),
      ),
    );
  }
}
