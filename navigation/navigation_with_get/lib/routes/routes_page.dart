import 'package:get/get.dart';
import 'package:navigation_with_get/pages/page_dua.dart';
import 'package:navigation_with_get/pages/page_empat.dart';
import 'package:navigation_with_get/pages/page_lima.dart';
import 'package:navigation_with_get/pages/page_satu.dart';
import 'package:navigation_with_get/pages/page_tiga.dart';
import 'package:navigation_with_get/routes/route_name.dart';

class AppPage {
  static final pages = [
    GetPage(name: RoutesName.pageSatu, page: () => PageSatu()),
    GetPage(name: RoutesName.pageDua, page: () => PageDua()),
    GetPage(name: RoutesName.pageTiga, page: () => PageTiga()),
    GetPage(name: RoutesName.pageEmpat, page: () => PageEmpat()),
    GetPage(name: RoutesName.pageLima, page: () => PageLima()),
  ];
}
