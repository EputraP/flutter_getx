import 'package:flutter/material.dart';
import 'package:navigation_without_get/pages/page_lima.dart';

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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => PageLima(),
                    ),
                    (Route<dynamic> route) => false);
              },
              child: const Text("Next >> "),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("<< Back "),
            )
          ],
        ),
      ),
    );
  }
}
