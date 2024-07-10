import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page 5"),
            const SizedBox(
              height: 10,
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
