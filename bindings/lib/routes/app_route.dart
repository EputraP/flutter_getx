import 'package:bindings/bindings/count_binding.dart';
import 'package:bindings/pages/count.dart';
import 'package:bindings/pages/home.dart';
import 'package:bindings/routes/app_name.dart';
import 'package:get/get.dart';

class AppRoute {
  static final appRoute = [
    GetPage(name: AppName.homePage, page: () => const HomePage()),
    GetPage(
        name: AppName.countPage,
        page: () => CountPage(),
        binding: CountBinding())
  ];
}
