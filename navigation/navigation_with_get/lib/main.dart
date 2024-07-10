import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_with_get/pages/page_satu.dart';
import 'package:navigation_with_get/routes/routes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
      getPages: AppPage.pages,
    );
  }
}
