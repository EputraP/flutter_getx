import 'package:dynamic_url/pages/details.dart';
import 'package:dynamic_url/pages/home.dart';
import 'package:dynamic_url/pages/product.dart';
import 'package:dynamic_url/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage(), getPages: AppRoutes.appRoutes);
  }
}
