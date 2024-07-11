import 'package:dynamic_url/pages/details.dart';
import 'package:dynamic_url/pages/home.dart';
import 'package:dynamic_url/pages/product.dart';
import 'package:dynamic_url/routes/app_route_names.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final appRoutes = [
    GetPage(name: AppRouteNames.home, page: () => HomePage()),
    GetPage(name: AppRouteNames.product, page: () => ProductPage()),
    GetPage(
        name: '${AppRouteNames.product}/:id/:name?',
        page: () => ProductDetailPage()),
  ];
}
